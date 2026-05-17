/**
 * GS Survival - NUI Handler & Client Integration
 * Handles communication between Lua game engine and web UI
 */

const NUI_APP = {
    currentMenu: 'main',
    playerData: null,
    
    init() {
        this.setupEventListeners();
        this.setupKeyboardShortcuts();
    },

    setupEventListeners() {
        // Window message handler from Lua
        window.addEventListener('message', (event) => {
            const { type, data } = event.data;
            
            switch(type) {
                case 'SHOW_UI':
                    this.showUI(data);
                    break;
                case 'HIDE_UI':
                    this.hideUI();
                    break;
                case 'UPDATE_STATUS':
                    this.updateStatus(data);
                    break;
                case 'UPDATE_INVENTORY':
                    this.updateInventory(data);
                    break;
                case 'UPDATE_TEAM':
                    this.updateTeam(data);
                    break;
                case 'SHOW_NOTIFICATION':
                    this.showNotification(data);
                    break;
            }
        });
    },

    setupKeyboardShortcuts() {
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape') {
                this.closeUI();
            }
        });
    },

    showUI(data = {}) {
        const app = document.getElementById('app');
        app.classList.remove('hidden');
        
        this.playerData = data;
        
        if (data.location) {
            document.getElementById('location-display').textContent = data.location;
        }
        if (data.cash !== undefined) {
            document.getElementById('cash-display').textContent = `$ ${data.cash.toLocaleString()}`;
        }
    },

    hideUI() {
        const app = document.getElementById('app');
        app.classList.add('hidden');
        this.sendToLua('closeUI', {});
    },

    closeUI() {
        this.hideUI();
    },

    updateStatus(data) {
        // Health
        if (data.health !== undefined) {
            const healthBar = document.getElementById('health-bar');
            const healthText = document.getElementById('health-text');
            healthBar.style.width = data.health + '%';
            healthText.textContent = Math.floor(data.health) + '%';
        }

        // Armor
        if (data.armor !== undefined) {
            const armorBar = document.getElementById('armor-bar');
            const armorText = document.getElementById('armor-text');
            armorBar.style.width = data.armor + '%';
            armorText.textContent = Math.floor(data.armor) + '%';
        }

        // Zone distance
        if (data.zoneDistance !== undefined) {
            const zonebar = document.getElementById('zone-bar');
            const zoneText = document.getElementById('zone-text');
            const distPercent = Math.max(0, Math.min(100, (1 - data.zoneDistance / 500) * 100));
            zonebar.style.width = distPercent + '%';
            zoneText.textContent = Math.floor(data.zoneDistance) + 'm';
        }

        // Wave counter
        if (data.wave !== undefined) {
            const waveBadge = document.getElementById('wave-counter');
            waveBadge.textContent = `WAVE ${data.wave}`;
            waveBadge.classList.remove('hidden');
        }
    },

    updateInventory(data) {
        const { items = [], weapons = [], gear = [], totalWeight = 0, maxWeight = 100 } = data;

        // Update weight display
        document.getElementById('inventory-weight').textContent = 
            `${totalWeight.toFixed(1)}/${maxWeight} kg`;

        // Render items tab
        this.renderInventoryTab('arc-inventory-items', items);
        
        // Render weapons tab
        this.renderInventoryTab('arc-inventory-weapons', weapons);
        
        // Render gear tab
        this.renderInventoryTab('arc-inventory-gear', gear);
    },

    renderInventoryTab(containerId, items) {
        const container = document.getElementById(containerId);
        
        if (!items || items.length === 0) {
            container.innerHTML = '<p class="empty-state">No items</p>';
            return;
        }

        container.innerHTML = items.map((item, idx) => `
            <div class="arc-item" onclick="NUI_APP.selectItem(${idx}, '${item.name}')">
                <div class="arc-item-icon">${item.icon || '📦'}</div>
                <div class="arc-item-info">
                    <div class="arc-item-name">${item.label || item.name}</div>
                    <div class="arc-item-count">x${item.count || 1}</div>
                    ${item.weight ? `<div class="arc-item-weight">${item.weight.toFixed(1)} kg</div>` : ''}
                </div>
            </div>
        `).join('');
    },

    selectItem(idx, itemName) {
        this.showNotification({
            title: 'Item Selected',
            message: itemName,
            type: 'info'
        });
    },

    dropSelectedItem() {
        this.sendToLua('dropItem', {});
    },

    updateTeam(data) {
        const { members = [] } = data;
        const teamList = document.getElementById('team-roster');

        if (members.length === 0) {
            teamList.innerHTML = '<p class="empty-state">No squad members</p>';
            return;
        }

        teamList.innerHTML = members.map(member => `
            <div class="team-member">
                <div class="team-member-status" style="${member.alive ? '' : 'background: #ff3333; box-shadow: 0 0 6px #ff3333;'}"></div>
                <div class="team-member-name">${member.name}</div>
            </div>
        `).join('');
    },

    showNotification(data) {
        const { title = 'Notification', message = '', type = 'info' } = data;
        const container = document.getElementById('notifications');
        
        const notif = document.createElement('div');
        notif.className = `notification notification-${type}`;
        notif.textContent = `${title}: ${message}`;
        
        container.appendChild(notif);
        
        setTimeout(() => {
            notif.remove();
        }, 4000);
    },

    // Menu navigation
    showMenu(menuName) {
        // Hide all sections
        document.querySelectorAll('.menu-section').forEach(section => {
            section.classList.add('hidden');
        });

        // Show selected menu
        const menuId = menuName === 'main' ? 'menu-main' : `menu-${menuName}`;
        const menuEl = document.getElementById(menuId);
        if (menuEl) {
            menuEl.classList.remove('hidden');
        }

        this.currentMenu = menuName;
    },

    // ARC Inventory tabs
    switchArcTab(tabName) {
        // Hide all tabs
        document.querySelectorAll('.arc-tab-content').forEach(tab => {
            tab.classList.add('hidden');
        });
        document.querySelectorAll('.arc-tab').forEach(tab => {
            tab.classList.remove('active');
        });

        // Show selected tab
        const tabContentId = `arc-${tabName}-tab`;
        const tabContent = document.getElementById(tabContentId);
        if (tabContent) {
            tabContent.classList.remove('hidden');
        }

        // Mark tab as active
        event.target.classList.add('active');
    },

    sendInviteDialog() {
        document.getElementById('invite-dialog').showModal();
    },

    confirmInvite() {
        const playerId = document.getElementById('invite-player-id').value;
        if (!playerId) {
            this.showNotification({
                title: 'Error',
                message: 'Enter a player ID',
                type: 'danger'
            });
            return;
        }

        this.sendToLua('sendInvite', { playerId: parseInt(playerId) });
        document.getElementById('invite-dialog').close();
        document.getElementById('invite-player-id').value = '';
    },

    // Lua communication
    sendToLua(action, data) {
        console.log(`[NUI] Sending to Lua: ${action}`, data);
        fetch(`https://${GetParentResourceName()}/nuiAction`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ action, data })
        }).catch(err => console.error('NUI Error:', err));
    }
};

// Initialize on load
document.addEventListener('DOMContentLoaded', () => {
    NUI_APP.init();
    
    // Set default menu
    NUI_APP.showMenu('main');
    
    // Mock data for testing (remove in production)
    NUI_APP.updateStatus({
        health: 85,
        armor: 60,
        zoneDistance: 150,
        wave: 3
    });

    NUI_APP.updateTeam({
        members: [
            { name: 'Player1', alive: true },
            { name: 'Player2', alive: true }
        ]
    });

    NUI_APP.updateInventory({
        items: [
            { name: 'medical_kit', label: 'Medical Kit', count: 2, weight: 0.5, icon: '🏥' },
            { name: 'ammo_9mm', label: '9mm Ammo', count: 30, weight: 0.3, icon: '🔫' }
        ],
        weapons: [
            { name: 'weapon_pistol', label: 'Pistol', count: 1, weight: 1.2, icon: '🔫' }
        ],
        gear: [
            { name: 'armor_vest', label: 'Armor Vest', count: 1, weight: 2.0, icon: '🛡️' }
        ],
        totalWeight: 3.5,
        maxWeight: 100
    });
});

// Make functions global for HTML onclick handlers
function closeUI() { NUI_APP.closeUI(); }
function showMenu(menu) { NUI_APP.showMenu(menu); }
function switchArcTab(tab) { NUI_APP.switchArcTab(tab); }
function sendInviteDialog() { NUI_APP.sendInviteDialog(); }
function confirmInvite() { NUI_APP.confirmInvite(); }
function dropSelectedItem() { NUI_APP.dropSelectedItem(); }

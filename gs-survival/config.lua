-- Bu dosya, survival ve ARC modlarının bütün oynanış ayarlarını merkezi olarak yönetir.
-- Aşağıdaki yorumlar her tablonun ve alanın ne işe yaradığını hızlıca anlamak için eklendi.

Config = {}

-- [CRAFT TARİFLERİ]
-- Her kayıt, crafting menüsünde gösterilen tek bir üretim tarifidir.
-- header: Menüde görünen başlık
-- txt: Oyuncuya gösterilen gereksinim özeti
-- icon: Menü ikonu
-- category: Menüde hangi sekmede/listede gruplanacağını belirler
-- params.event: Tarif seçildiğinde tetiklenecek client event'i
-- params.args.item: Üretilecek item adı
-- params.args.amount: Üretilecek adet
-- params.args.label: İlerleme/notify tarafında kullanılacak okunabilir isim
-- params.args.requirements: Gerekli item ve adet listesi
Config.CraftRecipes = {
    {
        header = "9mm Mermi Paketi",
        txt = "Gereksinim: 10 Metal Parçası, 5 Barut",
        icon = "fas fa-box-open",
        category = "ammo",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "ammo-9",
                amount = 30,
                label = "9mm Mermi Paketi",
                requirements = {
                    { item = "metalscrap", amount = 10 },
                    { item = "gunpowder", amount = 5 }
                }
            }
        }
    },
    {
        header = "IFAK (Gelişmiş İlk Yardım)",
        txt = "Gereksinim: 3 Bandaj, 1 Yanık Kremi",
        icon = "fas fa-medkit",
        category = "health",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "ifaks",
                amount = 1,
                label = "IFAK",
                requirements = {
                    { item = "bandage", amount = 3 },
                    { item = "burncream", amount = 1 }
                }
            }
        }
    },
    {
        header = "Tamir Kiti (Repairkit)",
        txt = "Gereksinim: 15 Hurda Metal, 10 Kauçuk",
        icon = "fas fa-tools",
        category = "material",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "repairkit",
                amount = 1,
                label = "Repairkit",
                requirements = {
                    { item = "scrapmetal", amount = 15 },
                    { item = "rubber", amount = 10 }
                }
            }
        }
    },
    {
        header = "Hafif Zırh",
        txt = "Gereksinim: 12 Kumaş, 6 Hurda Metal, 4 Kauçuk",
        icon = "fas fa-shield-alt",
        category = "health",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "armor",
                amount = 1,
                label = "Hafif Zırh",
                requirements = {
                    { item = "cloth", amount = 12 },
                    { item = "scrapmetal", amount = 6 },
                    { item = "rubber", amount = 4 }
                }
            }
        }
    },
    {
        header = "Tabanca",
        txt = "Gereksinim: 15 Hurda Metal, 1 Tabanca Blueprint",
        icon = "fas fa-tools",
        category = "weapon",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "weapon_pistol",
                amount = 1,
                label = "Tabanca",
                requirements = {
                    { item = "scrapmetal", amount = 15 },
                    { item = "pistol_blueprint", amount = 1 }
                }
            }
        }
    },
    {
        header = "Combat Pistol",
        txt = "Gereksinim: 18 Hurda Metal, 8 Metal Parçası, 1 Combat Pistol Blueprint",
        icon = "fas fa-tools",
        category = "weapon",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "weapon_combatpistol",
                amount = 1,
                label = "Combat Pistol",
                requirements = {
                    { item = "scrapmetal", amount = 18 },
                    { item = "metalscrap", amount = 8 },
                    { item = "combatpistol_blueprint", amount = 1 }
                }
            }
        }
    },
    {
        header = "Micro SMG",
        txt = "Gereksinim: 24 Hurda Metal, 10 Metal Parçası, 6 Kauçuk, 1 Micro SMG Blueprint",
        icon = "fas fa-tools",
        category = "weapon",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "weapon_microsmg",
                amount = 1,
                label = "Micro SMG",
                requirements = {
                    { item = "scrapmetal", amount = 24 },
                    { item = "metalscrap", amount = 10 },
                    { item = "rubber", amount = 6 },
                    { item = "microsmg_blueprint", amount = 1 }
                }
            }
        }
    },
    {
        header = "SMG",
        txt = "Gereksinim: 28 Hurda Metal, 12 Metal Parçası, 8 Kauçuk, 1 SMG Blueprint",
        icon = "fas fa-tools",
        category = "weapon",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "weapon_smg",
                amount = 1,
                label = "SMG",
                requirements = {
                    { item = "scrapmetal", amount = 28 },
                    { item = "metalscrap", amount = 12 },
                    { item = "rubber", amount = 8 },
                    { item = "smg_blueprint", amount = 1 }
                }
            }
        }
    },
    {
        header = "Carbine Rifle",
        txt = "Gereksinim: 34 Hurda Metal, 16 Metal Parçası, 8 Barut, 1 Carbine Rifle Blueprint",
        icon = "fas fa-tools",
        category = "weapon",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "weapon_carbinerifle",
                amount = 1,
                label = "Carbine Rifle",
                requirements = {
                    { item = "scrapmetal", amount = 34 },
                    { item = "metalscrap", amount = 16 },
                    { item = "gunpowder", amount = 8 },
                    { item = "carbinerifle_blueprint", amount = 1 }
                }
            }
        }
    },
    {
        header = "Assault Rifle",
        txt = "Gereksinim: 40 Hurda Metal, 18 Metal Parçası, 10 Barut, 1 Assault Rifle Blueprint",
        icon = "fas fa-tools",
        category = "weapon",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "weapon_assaultrifle",
                amount = 1,
                label = "Assault Rifle",
                requirements = {
                    { item = "scrapmetal", amount = 40 },
                    { item = "metalscrap", amount = 18 },
                    { item = "gunpowder", amount = 10 },
                    { item = "assaultrifle_blueprint", amount = 1 }
                }
            }
        }
    },
    {
        header = "ARC Barricade Kit",
        txt = "Gereksinim: 20 Hurda Metal, 10 Metal Parçası, 4 Kauçuk",
        icon = "fas fa-shield-alt",
        category = "material",
        params = {
            event = "gs-survival:client:craftItem",
            args = {
                item = "arc_barricade_kit",
                amount = 1,
                label = "ARC Barricade Kit",
                requirements = {
                    { item = "scrapmetal", amount = 20 },
                    { item = "metalscrap", amount = 10 },
                    { item = "rubber", amount = 4 }
                }
            }
        }
    }
}

-- [BÖLÜM (STAGE) YAPILANDIRMASI]
-- Her stage, klasik survival modunda oynanabilecek ayrı bir senaryoyu temsil eder.
-- label: Menüde görünen stage adı
-- center: Sınır kontrolü ve genel odak noktası için merkezin koordinatı
-- multiplier: Zorluk/ölçek çarpanı; NPC doğruluğu ve benzeri hesaplarda kullanılır
-- spawnPoints: Düşmanların doğabileceği pozisyonlar
-- Waves: Dalga listesi
--   npcCount: O dalgada toplam spawn olacak NPC sayısı
--   pedModel: NPC modeli
--   isDogWave: Bu dalganın köpek dalgası olup olmadığını belirtir
--   label: Dalga etiketi
--   weapon: NPC'ye verilecek silah
Config.Stages = {
    [1] = {
        label = "Gecekondu Baskını - Kolay",
        center = vector3(-127.15, -1584.77, 32.29), 
        multiplier = 1.0,
        spawnPoints = {
            -- Merkezin çevresindeki dar sokaklar ve çatılar/köşeler
            vector3(-81.26, -1613.18, 31.49), -- Kuzeybatı sokak arası
            -- vector3(-139.59, -1632.87, 32.55), -- Kuzeydoğu garaj arkası
            -- vector3(-71.32, -1586.99, 30.12), -- Güneydoğu çöp konteyner yanı
            -- vector3(-166.87, -1594.41, 34.36), -- Güneybatı ev arkası
            -- vector3(-125.10, -1470.80, 33.60), -- Kuzey girişi
        },
        Waves = {
            [1] = { npcCount = 1, pedModel = `g_m_y_famdnf_01`, isDogWave = false, label = "Sokak Çetesi", weapon = "weapon_bat" },
            -- [2] = { npcCount = 4, pedModel = `g_m_y_famca_01`, isDogWave = false, label = "Sokak Çetesi", weapon = "weapon_pistol" },
        }
    },
    [2] = {
        label = "Liman Operasyonu - Orta",
        center = vector3(1235.43, -3003.26, 9.32), 
        multiplier = 1.2,
        spawnPoints = {
            -- Konteynır araları ve vinç altları
            vector3(1228.03, -3068.66, 5.9), -- Konteynır bloğu A
            vector3(1222.08, -2906.67, 5.87), -- Vinç altı açık alan
            vector3(1174.97, -2933.73, 5.9), -- Kuzey Liman girişi
            -- vector3(1146.36, -3002.13, 5.9), -- Depo önü
            -- vector3(1164.24, -3054.69, 5.9), -- Rıhtım ucu
        },
        Waves = {
            [1] = { npcCount = 1, pedModel = `s_m_y_blackops_01`, isDogWave = false, label = "Liman Güvenliği", weapon = "weapon_smg" },
            [2] = { npcCount = 1, pedModel = `s_m_y_blackops_01`, isDogWave = false, label = "Liman Güvenliği", weapon = "weapon_smg" },
        }
    },
        [3] = {
        label = "Jilet Fadıl - Zor",
        center = vector3(1387.87, 1147.03, 114.33), 
        multiplier = 1.6,
        spawnPoints = {
            vector3(1318.72, 1106.94, 105.97), 
            vector3(1418.45, 1177.02, 114.33), 
            vector3(1432.47, 1121.08, 114.25), 
            vector3(1369.02, 1098.44, 113.86), 
            vector3(1473.22, 1130.18, 114.33), 
        },
        Waves = {
            [1] = { npcCount = 3, pedModel = `g_m_m_chicold_01`, isDogWave = false, label = "Koruma", weapon = "weapon_pistol" },
            [2] = { npcCount = 4, pedModel = `g_m_m_chicold_01`, isDogWave = false, label = "Koruma", weapon = "weapon_combatpistol" },
            [3] = { npcCount = 3, pedModel = `g_m_m_chicold_01`, isDogWave = false, label = "Koruma", weapon = "weapon_smg" },
            [4] = { npcCount = 6, pedModel = `g_m_m_chicold_01`, isDogWave = false, label = "Koruma", weapon = "weapon_assaultrifle" },
        }
    },
}
-- [BAŞLANGIÇ NPC AYARLARI]
-- Lobi/başlangıç menüsünü açan sabit NPC'nin modelini, konumunu ve etiketini tanımlar.
Config.Npc = {
    Model = `a_m_m_og_boss_01`,
    Coords = vector4(-938.53, -2969.25, 13.95, 108.1), 
    Label = "Operasyon Menüsü"
}

Config.MenuPreview = {
    Coords = vector4(-962.32, -3006.78, 13.95, 328.65),
    CameraOffset = {
        forward = 3.15,
        right = 6.0,
        up = 1.90
    },
    LookAtOffset = {
        forward = 0.0,
        right = 0.0,
        up = 0.78
    },
    Fov = 28.0,
    MemberOffsets = {
        { forward = 0.0, right = -1.35, up = 0.0 },
        { forward = 0.0, right = 1.35, up = 0.0 },
        { forward = 0.0, right = 2.7, up = 0.0 }
    }
}

-- Oyun modu seçim menüsünde listelenecek modlar.
-- id: Sistem içi benzersiz mod anahtarı
-- label: Oyuncuya gösterilecek isim
-- description: Menü açıklaması
Config.GameModes = {
    classic = {
        id = "classic",
        label = "Klasik Hayatta Kalma",
        description = "Dalgalar halinde gelen düşmanlara karşı hayatta kal."
    },
    arc_pvp = {
        id = "arc_pvp",
        label = "ARC Baskını",
        description = "Ganimet kasalarını topla, rakiplerini ele ve bölgeden sağ çık."
    }
}

Config.Survival = {
    -- Oyuncunun survival oturum durumunu metadata üzerinde takip etmek için kullanılan anahtar adları.
    Metadata = {
        activeFlag = "in_survival",
        modeKey = "survival_mode",
        weapon = "survival_weapon",
        armor = "survival_armor",
        level = "survival_level"
    },
    -- Survival başlarken alınan envanteri geçici olarak saklayan yedek stash ayarları.
    -- Prefix: Her oyuncu için oluşturulan stash ID'sinin ön eki
    -- Label: Envanter arayüzünde görünen depo adı
    -- Slots/Weight: ox_inventory kapasite ayarları
    BackupStash = {
        Prefix = "surv_backup_",
        Label = "Survival Yedek",
        Slots = 50,
        Weight = 100000
    }
}

-- [SAVAŞ VE ZORLUK AYARLARI]
-- Klasik survival modunun savaş akışını belirleyen temel ayarlar.
-- WaveWaitTime: Dalgalar arası bekleme süresi
-- NpcAccuracy: NPC doğruluk taban değeri
-- BoundaryDistance: Oyuncunun stage merkezinden ne kadar uzaklaşabileceği
-- BoundaryWarningBufferPct: Sınır uyarısının toplam sınırın yüzde kaç kala başlayacağı
-- MinBoundaryWarningBuffer: Yüzde hesabı düşük kalsa bile minimum uyarı tamponu
-- BoundaryWarningCooldownMs: Sınır uyarısı tekrar gösterilmeden önce beklenecek süre
-- SpawnProtectionMs: Oyuncu spawn olduktan sonra verilen geçici koruma süresi
-- LootTime: NPC loot açma süresi
-- DefaultWeapon/DefaultAmmo/DefaultAmmoAmount: Oyuncuya varsayılan verilen başlangıç loadout'u
Config.Combat = {
    WaveWaitTime = 16, 
    NpcAccuracy = 25, 
    BoundaryDistance = 90.0, -- Oyuncunun merkezden ne kadar uzaklaşabileceği
    BoundaryWarningBufferPct = 0.2,
    MinBoundaryWarningBuffer = 20.0,
    BoundaryWarningCooldownMs = 15000,
    SpawnProtectionMs = 5000,
    LootTime = 10000, 
    DefaultWeapon = "WEAPON_PISTOL",
    DefaultAmmo = "ammo-9",
    DefaultAmmoAmount = 100
}

-- [LOOT AYARLARI]
-- Klasik survival NPC loot havuzu.
-- item: Düşebilecek item adı
-- min/max: Tek düşüşte verilebilecek minimum ve maksimum adet
-- chance: Yüzdelik düşme ihtimali
-- type: İç sınıflandırma/analiz etiketi
-- minWave: Bu item'in hangi dalgadan sonra çıkabileceği
-- keepOnExit: Mod bitince oyuncuda kalıp kalmayacağı
Config.LootTable = {
    -- Combat (Para ve Mermi)
    { item = "money", min = 100, max = 500, chance = 50, type = "combat", keepOnExit = true },
    { item = "weapon_assaultrifle", chance = 5, min = 1, max = 1, keepOnExit = true },
    { item = "black_money", min = 50, max = 200, chance = 20, type = "combat", keepOnExit = true },
    { item = "ammo-9", min = 10, max = 30, chance = 100, type = "combat", keepOnExit = true },
    
    -- Craft Malzemeleri (Common)
    { item = "scrapmetal", min = 2, max = 5, chance = 25, type = "craft", keepOnExit = true },
    { item = "metalscrap", min = 2, max = 4, chance = 20, type = "craft", keepOnExit = true },
    { item = "rubber", min = 1, max = 3, chance = 18, type = "craft", keepOnExit = true },
    { item = "cloth", min = 2, max = 4, chance = 22, type = "craft", keepOnExit = true },
    
    -- Survival (Food/Med)
    { item = "water_bottle", min = 1, max = 1, chance = 15, type = "survival", keepOnExit = true },
    { item = "tosti", min = 1, max = 1, chance = 12, type = "survival", keepOnExit = true },
    { item = "bandage", min = 1, max = 1, chance = 10, type = "survival", keepOnExit = true },
    { item = "burncream", min = 1, max = 1, chance = 5, type = "survival", keepOnExit = true },
    
    -- Nadir Malzemeler
    { item = "electronics", min = 1, max = 1, chance = 5, type = "rare", minWave = 3, keepOnExit = true }, 
    { item = "pistol_blueprint", min = 1, max = 1, chance = 15, type = "rare", minWave = 3, keepOnExit = true },
    { item = "cryptostick", min = 1, max = 1, chance = 1, type = "rare", minWave = 4, keepOnExit = true },
    { item = "gunpowder", min = 1, max = 3, chance = 15, type = "craft", keepOnExit = true },
    { item = "medkit", min = 1, max = 1, chance = 5, type = "survival", keepOnExit = true },
    { item = "ifaks", min = 1, max = 1, chance = 3, type = "survival", keepOnExit = true }
}

Config.ArcPvP = {
    -- ARC baskını sırasında oyuncunun metadata'sında tutulan durum anahtarları.
    Metadata = {
        activeFlag = "in_arc_pvp",
        modeKey = "arc_mode"
    },
    -- true ise oyuncu kendi kişisel envanterini ARC oturumuna da taşıyabilir.
    AllowPersonalInventory = true,
    -- Oyuncu bağlantı kestiğinde ne yapılacağını belirler: rollback / death / rejoin.
    DisconnectPolicy = "rejoin", --rollback - death - rejoin
    -- true yapılırsa oyuncunun baskına girmeden önce loadout çantasını hazırlamış olması zorunlu olur.
    RequirePreparedLoadout = false,
    -- Arka arkaya baskın başlatma denemeleri arasındaki debounce süresi.
    StartDebounceMs = 6000,
    -- true ise deployment verisi server tarafında daha katı doğrulanır.
    StrictDeploymentValidation = true,
    -- Oyuncuya özel ARC stash ID'leri oluşturulurken kullanılan önekler.
    MainStashPrefix = "arc_main_",
    LoadoutStashPrefix = "arc_loadout_",
    BackupStashPrefix = "arc_backup_",
    -- ARC stash arayüzlerinde görünen adlar.
    MainStashLabel = "ARC Ana Depo",
    LoadoutStashLabel = "ARC Baskın Çantası",
    -- Kalıcı ana deponun kapasite ayarları.
    MainStashSlots = 80,
    MainStashWeight = 200000,
    -- Baskın loadout çantasının kapasite ayarları.
    LoadoutStashSlots = 24,
    LoadoutStashWeight = 75000,
    -- Kişisel eşya yedeği için kullanılan geçici emanet deposu ayarları.
    BackupStashLabel = "ARC Geçici Emanet",
    BackupStashSlots = 50,
    BackupStashWeight = 100000,
    -- Dünya üzerinde spawn edilen loot objelerinin modelleri.
    ChestModel = `prop_box_wood02a_pu`,
    DropModel = `prop_drop_crate_01_set2`,
    -- Yerleştirilebilir ARC barikat item'inin davranış ayarları.
    -- Item: Kullanılacak item adı
    -- Label: UI/notify etiketi
    -- Model: Yerleştirilecek obje modeli
    -- PlaceDistance: Oyuncudan ne kadar öne preview atılacağı
    -- InteractDistance: Barikata yaklaşma/etkileşim mesafesi
    -- PreviewAlpha: Preview objesinin saydamlık değeri
    -- PlacementDurationMs: Yerleştirme süresi
    -- RotationStep: Her döndürmede kaç derece çevrileceği
    -- MaxPerPlayer: Bir oyuncunun aynı baskında koyabileceği maksimum barikat
    -- MaxPerRaid: Tüm baskın boyunca izin verilen toplam barikat
    -- MinSpacing: İki barikat arasında bırakılması gereken minimum mesafe
    BarricadeKit = {
        Item = "arc_barricade_kit",
        Label = "ARC Barricade Kit",
        Model = `prop_mp_barrier_02b`,
        PlaceDistance = 2.2,
        InteractDistance = 4.0,
        PreviewAlpha = 160,
        PlacementDurationMs = 2500,
        RotationStep = 3.0,
        MaxPerPlayer = 2,
        MaxPerRaid = 16,
        MinSpacing = 2.5
    },
    -- ARC baskınlarında sınır/yeniden giriş/oturum eşleştirme davranışları.
    -- BoundaryPadding: Deployment merkezine göre ekstra izinli hareket alanı
    -- SpawnProtectionMs: Deployment sonrası geçici koruma
    -- SpawnClearRadius: Spawn çevresinde loot/engeller temizlenirken baz alınan yarıçap
    -- MinInsertionLootDistance: Spawn noktasına çok yakın loot çıkmasını engeller
    -- RaidDurationSeconds: Tek baskının toplam süresi
    -- MaxPlayersPerRaid: Bir aktif ARC oturumundaki toplam oyuncu sınırı
    -- ReuseMinimumRemainingSeconds: Var olan bir baskını tekrar kullanmak için gereken minimum kalan süre
    -- RejoinPolicy: Yeniden bağlanan oyuncunun aynı oturuma dönme kuralı
    -- LateJoinCutoffSeconds: Bu süre geçince yeni squad baskına alınmaz
    -- AllowJoinAfterExtractionUnlocked: Extraction açıldıktan sonra yeni takım kabul edilip edilmeyeceği
    -- DenyJoinIfSquadPreviouslyEliminated: O baskında elenmiş takımın tekrar girişinin engellenmesi
    -- MinimumRemainingSecondsForBackfill: Backfill için gerekli minimum kalan süre
    -- SessionReuseStrategy: Uygun oturum seçilirken hangi stratejinin kullanılacağı
    -- DeploymentNotifyDelay: Deployment ekranı ile oyun içi bildirim arasındaki gecikme
    BoundaryPadding = 35.0,
    SpawnProtectionMs = 8000,
    SpawnClearRadius = 125.0,
    MinInsertionLootDistance = 18.0,
    RaidDurationSeconds = 1800,
    MaxPlayersPerRaid = 40,
    ReuseMinimumRemainingSeconds = 1080,
    RejoinPolicy = "same_session_only", -- disabled / same_session_only
    LateJoinCutoffSeconds = 720, -- after this many elapsed seconds, new squads are no longer allowed to join
    AllowJoinAfterExtractionUnlocked = false, -- if false, extraction unlock closes the raid to fresh squads
    DenyJoinIfSquadPreviouslyEliminated = true, -- deny re-entry to the same active raid after a squad member dies there
    MinimumRemainingSecondsForBackfill = 1080, -- active raid must have at least this much time left to accept a new squad
    SessionReuseStrategy = "most_remaining", -- most_remaining / least_population
    DeploymentNotifyDelay = 1200,
    -- Extraction fazının çalışma kuralları.
    -- UnlockMode: Çıkışın nasıl açılacağı (manuel çağrı, süreye bağlı, her zaman açık, son faz)
    -- UnlockAfterSeconds/LastPhaseUnlockSeconds: Çıkış kilidi açılma zamanları
    -- CallDelay: Helikopter/çıkış çağrısından sonra aktif olmaya kadar geçecek süre
    -- ReadyWindowSeconds: Biniş/çıkış için tanınan pencere
    -- ManualDepartureCountdownSeconds: Manuel kalkış başlatılınca geri sayım
    -- ZoneRadius: Çıkış alanının yarıçapı
    -- RequireFullTeam/AllowSoloExtract/AllowPartialTeamExtract: Takım bütünlüğü kuralları
    -- CancelIfZoneEmpty: Alan boş kalırsa extraction'ın iptal edilmesi
    -- BoardingInterruptOnLeave: Alan terk edilince binişin bozulması
    -- AutoFailIfNoExtract: Süre bitince çıkılamadıysa baskının başarısız sayılması
    -- ManualDepartureEnabled/AutoDepartureOnTimeout: Kalkışın nasıl tetikleneceği
    -- NotifyAllPlayers: Extraction bildirimlerinin herkese gidip gitmeyeceği
    -- SpawnHelicopter/UseHelicopterScene/HelicopterModel/HelicopterHeight: Sinematik helikopter ayarları
    -- CleanupDelay: Extraction sonrası temizleme gecikmesi
    -- Zones: Kullanılabilecek çıkış noktaları (label/coords/heading)
    Extraction = {
        Enabled = true,
        Debug = false,
        UnlockMode = "always_available", -- manual_call / time_unlock / always_available / last_phase
        UnlockAfterSeconds = 600,
        LastPhaseUnlockSeconds = 240,
        CallDelay = 45,
        ReadyWindowSeconds = 90,
        ManualDepartureCountdownSeconds = 20,
        ZoneRadius = 12.0,
        RequireFullTeam = false,
        AllowSoloExtract = true,
        AllowPartialTeamExtract = true,
        CancelIfZoneEmpty = false,
        BoardingInterruptOnLeave = true,
        AutoFailIfNoExtract = true,
        ManualDepartureEnabled = true,
        AutoDepartureOnTimeout = true,
        NotifyAllPlayers = true,
        SpawnHelicopter = true,
        UseHelicopterScene = true,
        HelicopterModel = "frogger",
        HelicopterHeight = 80.0,
        CleanupDelay = 10000,
        Zones = {
            { label = "North Ridge", coords = vector3(-706.17, 499.34, 109.29), heading = 236.0 },
            { label = "Industrial Lift", coords = vector3(929.16, -1013.25, 38.55), heading = 271.0 },
            { label = "South Extraction", coords = vector3(1232.22, -3157.42, 5.53), heading = 179.0 }
        }
    },
    -- ARC baskını başında oyuncuya verilen varsayılan loadout.
    -- Weapon: Başlangıç silahı
    -- Ammo/AmmoAmount: Verilecek mermi tipi ve miktarı
    -- Armor: Başlangıç zırhı
    -- Items: Ek başlangıç item listesi
    Loadout = {
        Weapon = "weapon_pistol",
        Ammo = "ammo-9",
        AmmoAmount = 90,
        Armor = 0,
        Items = {
            { item = "bandage", count = 2 },
            { item = "water_bottle", count = 1 }
        }
    },
    -- ARC arena havuzu; server uygun bir arena seçerken bu listeyi kullanır.
    -- center: Baskın merkezin koordinatı
    -- multiplier: Zorluk/ödül ölçeği
    -- lootNodeCount: Rastgele seçilecek standart loot noktası sayısı
    -- highValueNodeCount: Yüksek değerli loot noktası sayısı
    Arenas = {
        [1] = {
            label = "Tarama Protokolü I",
            center = vector3(215.56, -933.21, 30.69),
            multiplier = 1.0,
            lootNodeCount = 8,
            highValueNodeCount = 1
        },
        [2] = {
            label = "Tarama Protokolü II",
            center = vector3(215.56, -933.21, 30.69),
            multiplier = 1.2,
            lootNodeCount = 10,
            highValueNodeCount = 2
        },
        [3] = {
            label = "Tarama Protokolü III",
            center = vector3(215.56, -933.21, 30.69),
            multiplier = 1.6,
            lootNodeCount = 12,
            highValueNodeCount = 3
        }
    },
    -- Deployment bölgeleri, oyuncuların map üzerinde konuşlandırıldığı baskın alanlarıdır.
    -- lootRegion: O bölgenin hangi loot kalitesi tablosunu kullanacağını belirtir
    -- insertionPoints: Takımların bırakılabileceği giriş noktaları
    -- extractionPoint: Bölgenin önerilen/ana çıkış koordinatı
    -- lootNodes: Bölge içine dağılacak loot noktaları
    --   coords: Kasanın/sandığın doğacağı konum
    --   type: chest veya drop; hangi model/görselin kullanılacağını etkiler
    --   rollCount: Bu node açıldığında kaç kez loot roll yapılacağı
    --   label: Etkileşim etiket adı
    DeploymentZones = {
        [1] = {
            label = "Güney Bölgesi",
            lootRegion = "blue",
            center = vector3(126.58, -1943.47, 20.8),
            insertionPoints = {
                vector3(283.15, -1732.99, 29.4),
                vector3(-218.16, -1635.07, 33.55),
                vector3(200.55, -1659.87, 29.8)
            },
            extractionPoint = vector3(56.72, -1760.35, 47.7),
            lootNodes = {
                { coords = vector3(73.6, -1787.62, 35.3), type = "chest", rollCount = 1, label = "Terkedilmiş Daire" },
                { coords = vector3(109.17, -1895.59, 27.15), type = "chest", rollCount = 1, label = "Arka Sokak Kasası" },
                { coords = vector3(23.45, -1905.88, 22.33), type = "drop", rollCount = 2, label = "Sinyal Sandığı" },
                { coords = vector3(0.58, -1824.73, 29.54), type = "chest", rollCount = 1, label = "Çatı Kutusu" },
                { coords = vector3(-27.78, -1780.11, 27.43), type = "chest", rollCount = 1, label = "Dükkan Arkası" },
                { coords = vector3(-87.97, -1822.41, 41.39), type = "chest", rollCount = 1, label = "Panel Kutusu" },
                { coords = vector3(-198.61, -1714.73, 32.66), type = "drop", rollCount = 2, label = "Yüksek Değerli Sandık" },
                { coords = vector3(-218.73, -1652.66, 34.46), type = "chest", rollCount = 1, label = "Avlu Sandığı" },
                { coords = vector3(-263.27, -1562.95, 36.64), type = "chest", rollCount = 1, label = "Alt Geçit Kutusu" },
                { coords = vector3(-128.7, -1584.92, 32.28), type = "drop", rollCount = 2, label = "Mahalle Sinyali" },
                { coords = vector3(-101.1, -1462.59, 33.28), type = "chest", rollCount = 1, label = "Sokak Arası Kasası" },
                { coords = vector3(-62.42, -1515.66, 33.44), type = "chest", rollCount = 1, label = "Bariyer Kutusu" }
            }
        },
        [2] = {
            label = "Sanayi Hattı",
            lootRegion = "blue",
            center = vector3(787.47, -1005.41, 26.14),
            insertionPoints = {
                vector3(731.35, -1403.89, 26.52),
                vector3(723.54, -755.88, 25.37),
                vector3(1127.28, -1299.94, 34.73)
            },
            extractionPoint = vector3(936.47, -941.57, 59.09),
            lootNodes = {
                { coords = vector3(684.86, -961.11, 23.26), type = "chest", rollCount = 1, label = "Depo Kasası" },
                { coords = vector3(738.06, -924.73, 24.91), type = "chest", rollCount = 1, label = "Forklift Sandığı" },
                { coords = vector3(846.61, -965.57, 26.53), type = "drop", rollCount = 2, label = "Konveyör Sandığı" },
                { coords = vector3(895.51, -940.39, 44.21), type = "chest", rollCount = 1, label = "Çatı Paneli" },
                { coords = vector3(764.87, -1046.2, 20.99), type = "chest", rollCount = 1, label = "Makine Sandığı" },
                { coords = vector3(766.35, -1121.32, 36.22), type = "drop", rollCount = 2, label = "Veri Kasası" },
                { coords = vector3(713.23, -965.18, 30.4), type = "chest", rollCount = 1, label = "Üst Raf Deposu" },
                { coords = vector3(882.06, -1050.67, 33.01), type = "chest", rollCount = 1, label = "Servis Kutusu" },
                { coords = vector3(908.94, -1066.09, 32.83), type = "chest", rollCount = 1, label = "Yedek Parça Kasası" },
                { coords = vector3(698.77, -1141.84, 23.76), type = "drop", rollCount = 2, label = "Hat Sonu Sandığı" },
                { coords = vector3(856.02, -1137.68, 23.99), type = "chest", rollCount = 1, label = "Yük Köprüsü Kutusu" },
                { coords = vector3(808.96, -823.79, 26.18), type = "chest", rollCount = 1, label = "Depo Girişi Kasası" }
            }
        },
        [3] = {
            label = "Liman",
            lootRegion = "green",
            center = vector3(1214.73, -2998.91, 5.87),
            insertionPoints = {
                vector3(624.97, -2970.39, 6.05),
                vector3(766.59, -3288.67, 6.1),
                vector3(884.63, -2872.22, 19.02)
            },
            extractionPoint = vector3(1232.22, -3157.42, 5.53),
            lootNodes = {
                { coords = vector3(1241.76, -3047.96, 14.3), type = "chest", rollCount = 1, label = "Konteyner Kasası" },
                { coords = vector3(1155.91, -2861.94, 43.29), type = "chest", rollCount = 1, label = "İskele Kutusu" },
                { coords = vector3(1103.99, -2981.54, 5.9), type = "drop", rollCount = 2, label = "Yüzer Sandık" },
                { coords = vector3(1211.06, -3281.07, 13.54), type = "chest", rollCount = 1, label = "Vinç Sandığı" },
                { coords = vector3(1064.01, -3272.07, 7.13), type = "chest", rollCount = 1, label = "Rıhtım Deposu" },
                { coords = vector3(1009.49, -3326.98, 14.62), type = "chest", rollCount = 1, label = "Açık Kasa" },
                { coords = vector3(828.88, -3322.2, 5.9), type = "drop", rollCount = 2, label = "Liman Sinyali" },
                { coords = vector3(794.9, -3248.68, 14.88), type = "chest", rollCount = 1, label = "Gümrük Kutusu" },
                { coords = vector3(804.28, -2993.61, 28.38), type = "chest", rollCount = 1, label = "Kıyı Deposu" },
                { coords = vector3(1011.18, -2871.71, 39.16), type = "drop", rollCount = 2, label = "Transit Sinyali" },
                { coords = vector3(805.65, -2976.48, 6.02), type = "chest", rollCount = 1, label = "Üst Güverte Kutusu" },
                { coords = vector3(1106.63, -3084.27, 5.86), type = "chest", rollCount = 1, label = "Kargo Çıkışı Kasası" }
            }
        },
        [4] = {
            label = "Vinewood",
            lootRegion = "green",
            center = vector3(-596.85, 541.23, 107.75),
            insertionPoints = {
                vector3(-644.64, 675.86, 150.39),
                vector3(-347.54, 625.16, 171.36),
                vector3(-500.68, 428.54, 101.88)
            },
            extractionPoint = vector3(-706.17, 499.34, 109.29),
            lootNodes = {
                { coords = vector3(-724.88, 574.74, 142.39), type = "chest", rollCount = 1, label = "Teras Kasası" },
                { coords = vector3(-715.6, 619.93, 155.16), type = "chest", rollCount = 1, label = "Giriş Kutusu" },
                { coords = vector3(-616.12, 629.89, 151.04), type = "drop", rollCount = 2, label = "Yamaç Sandığı" },
                { coords = vector3(-501.52, 677.54, 151.26), type = "chest", rollCount = 1, label = "Garaj Deposu" },
                { coords = vector3(-506.15, 497.9, 107.78), type = "chest", rollCount = 1, label = "Çatışma Kasası" },
                { coords = vector3(-745.83, 490.06, 109.47), type = "drop", rollCount = 2, label = "Sırt Hattı Sandığı" },
                { coords = vector3(-643.04, 723.35, 174.28), type = "chest", rollCount = 1, label = "Villa Paneli" },
                { coords = vector3(-814.45, 785.7, 200.65), type = "chest", rollCount = 1, label = "Yan Bahçe Kutusu" },
                { coords = vector3(-927.89, 834.1, 184.37), type = "chest", rollCount = 1, label = "Merdiven Kasası" },
                { coords = vector3(-636.97, 868.97, 220.26), type = "drop", rollCount = 2, label = "Yamaç Sinyali" },
                { coords = vector3(-420.8, 1109.14, 332.53), type = "chest", rollCount = 1, label = "Siper Kutusu" },
                { coords = vector3(-437.27, 1113.67, 332.55), type = "chest", rollCount = 1, label = "Villa Terası Deposu" }
            }
        },
        [5] = {
            label = "Orta Kasaba",
            lootRegion = "red",
            center = vector3(1889.41, 3717.08, 32.74),
            insertionPoints = {
                vector3(892.51, 3610.2, 32.92),
                vector3(1238.5, 3376.04, 55.05),
                vector3(2437.87, 4067.54, 38.06)
            },
            extractionPoint = vector3(1964.12, 3821.91, 32.21),
            lootNodes = {
                { coords = vector3(1923.75, 3732.79, 32.77), type = "chest", rollCount = 1, label = "Karavan Kasası" },
                { coords = vector3(1693.14, 3759.5, 39.18), type = "chest", rollCount = 1, label = "Benzinlik Kutusu" },
                { coords = vector3(1538.48, 3794.8, 38.18), type = "drop", rollCount = 2, label = "Tozlu Sandık" },
                { coords = vector3(1948.84, 3759.41, 32.22), type = "chest", rollCount = 1, label = "Atölye Deposu" },
                { coords = vector3(1423.53, 3663.32, 39.73), type = "chest", rollCount = 1, label = "Depo Kasası" },
                { coords = vector3(1508.49, 3575.97, 38.74), type = "drop", rollCount = 2, label = "Kurak Sinyal" },
                { coords = vector3(1851.63, 3773.94, 33.06), type = "chest", rollCount = 1, label = "Arka Sokak Kutusu" },
                { coords = vector3(1445.27, 3751.32, 31.93), type = "chest", rollCount = 1, label = "Hurda Kasası" },
                { coords = vector3(1836.25, 3723.67, 33.27), type = "chest", rollCount = 1, label = "Motel Arkası Kasası" },
                { coords = vector3(1709.48, 3845.91, 34.92), type = "drop", rollCount = 2, label = "Kurye Sandığı" },
                { coords = vector3(2050.07, 3683.0, 34.59), type = "chest", rollCount = 1, label = "Lastik Deposu" },
                { coords = vector3(1710.9, 3688.63, 34.82), type = "chest", rollCount = 1, label = "Yol Kenarı Kutusu" }
            }
        },
        [6] = {
            label = "Baskın Evi",
            lootRegion = "red",
            center = vector3(2448.73, 4958.8, 46.81),
            insertionPoints = {
                vector3(2863.72, 4901.64, 63.44),
                vector3(2192.33, 5598.07, 53.74),
                vector3(1951.82, 4650.4, 40.65)
            },
            extractionPoint = vector3(2530.73, 4685.14, 33.84),
            lootNodes = {
                { coords = vector3(2435.54, 4967.24, 46.81), type = "chest", rollCount = 1, label = "Ahır Kasası" },
                { coords = vector3(2444.03, 4965.63, 46.81), type = "drop", rollCount = 2, label = "Silo Sandığı" },
                { coords = vector3(2435.52, 4972.5, 46.83), type = "chest", rollCount = 1, label = "Tarla Sandığı" },
                { coords = vector3(2443.13, 4974.61, 46.81), type = "chest", rollCount = 1, label = "Çit Arkası Kasa" },
                { coords = vector3(2441.5, 4984.46, 46.81), type = "chest", rollCount = 1, label = "Kamyon Deposu" },
                { coords = vector3(2454.31, 4991.23, 46.81), type = "drop", rollCount = 2, label = "Röle Sinyali" },
                { coords = vector3(2456.55, 4988.09, 46.81), type = "chest", rollCount = 1, label = "Değirmen Kutusu" },
                { coords = vector3(2439.97, 4970.7, 51.56), type = "chest", rollCount = 1, label = "Gübre Deposu" },
                { coords = vector3(2452.07, 4974.13, 51.56), type = "chest", rollCount = 1, label = "Sulama Kutusu" },
                { coords = vector3(2445.36, 4987.58, 51.73), type = "drop", rollCount = 2, label = "Tarla Sinyali" },
                { coords = vector3(2486.49, 4968.83, 48.12), type = "chest", rollCount = 1, label = "Samanlık Kasası" },
                { coords = vector3(2434.44, 4966.49, 42.35), type = "chest", rollCount = 1, label = "Kanal Deposu" }
            }
        },
        [7] = {
            label = "Hapishane",
            lootRegion = "yellow",
            center = vector3(1728.2, 2565.31, 58.87),
            insertionPoints = {
                vector3(-488.1, 4924.23, 147.01),
                vector3(-1001.06, 5157.04, 128.55),
                vector3(-754.48, 5589.12, 41.65)
            },
            extractionPoint = vector3(2345.29, 2582.48, 46.62),
            lootNodes = {
                { coords = vector3(1826.94, 2608.45, 45.59), type = "chest", rollCount = 1, label = "Odunluk Kasası" },
                { coords = vector3(1628.52, 2680.33, 55.19), type = "chest", rollCount = 1, label = "Kesim Kasası" },
                { coords = vector3(1591.28, 2621.49, 53.49), type = "drop", rollCount = 2, label = "Kereste Sandığı" },
                { coords = vector3(1601.15, 2531.68, 55.15), type = "chest", rollCount = 1, label = "Kule Deposu" },
                { coords = vector3(1651.96, 2485.36, 55.16), type = "chest", rollCount = 1, label = "Tepe Kasası" },
                { coords = vector3(1690.71, 2545.38, 55.03), type = "drop", rollCount = 2, label = "Kuzey Sinyali" },
                { coords = vector3(1680.73, 2512.86, 45.56), type = "chest", rollCount = 1, label = "Ağaç Kesim Kutusu" },
                { coords = vector3(1541.82, 2469.94, 62.88), type = "chest", rollCount = 1, label = "Kamp Deposu" },
                { coords = vector3(1535.42, 2585.72, 62.85), type = "chest", rollCount = 1, label = "Yığın Kasası" },
                { coords = vector3(1570.3, 2678.68, 62.89), type = "drop", rollCount = 2, label = "Tomruk Sinyali" },
                { coords = vector3(1649.97, 2757.39, 63.04), type = "chest", rollCount = 1, label = "Kesim Hattı Kutusu" },
                { coords = vector3(1773.16, 2761.48, 63.05), type = "chest", rollCount = 1, label = "Seyir Noktası Kasası" }
            }
        },
        [8] = {
            label = "Santral",
            lootRegion = "yellow",
            center = vector3(2718.91, 1361.82, 24.52),
            insertionPoints = {
                vector3(-3416.81, 967.15, 8.35),
                vector3(-2994.57, 770.09, 26.99),
                vector3(-2804.12, 1423.24, 100.93)
            },
            extractionPoint = vector3(-3026.87, 77.53, 11.61),
            lootNodes = {
                { coords = vector3(2749.32, 1573.43, 57.47), type = "chest", rollCount = 1, label = "Sahil Kasası" },
                { coords = vector3(2803.48, 1431.94, 34.35), type = "chest", rollCount = 1, label = "Yol Kenarı Kutusu" },
                { coords = vector3(2727.45, 1358.35, 24.52), type = "drop", rollCount = 2, label = "Yamaç Sandığı" },
                { coords = vector3(2723.75, 1358.11, 24.52), type = "chest", rollCount = 1, label = "Tepelik Deposu" },
                { coords = vector3(2723.48, 1363.12, 24.52), type = "chest", rollCount = 1, label = "Otoyol Kutusu" },
                { coords = vector3(2723.56, 1358.69, 24.52), type = "drop", rollCount = 2, label = "Kıyı Sinyali" },
                { coords = vector3(2669.36, 1519.98, 20.84), type = "chest", rollCount = 1, label = "İskele Sandığı" },
                { coords = vector3(2742.38, 1642.39, 24.57), type = "chest", rollCount = 1, label = "Tünel Deposu" },
                { coords = vector3(2833.8, 1605.32, 32.58), type = "chest", rollCount = 1, label = "Sahil İnişi Kasası" },
                { coords = vector3(2845.67, 1552.41, 24.57), type = "drop", rollCount = 2, label = "Kayalık Sandık" },
                { coords = vector3(2856.32, 1435.79, 24.57), type = "chest", rollCount = 1, label = "Otoyol Bariyeri Kutusu" },
                { coords = vector3(2736.07, 1507.92, 51.61), type = "chest", rollCount = 1, label = "Kıyı Şeridi Deposu" }
            }
        }
    },
    -- Bölge renklerine göre ayrılmış loot tabloları.
    -- label: UI/map üzerinde görünen renk bölgesi adı
    -- lootTable: O renk bölgesine ait item havuzu
    LootRegions = {
        blue = {
            label = "Mavi Bölge",
            lootTable = {
                { item = "ammo-9", min = 15, max = 35, chance = 100 },
                { item = "metalscrap", min = 2, max = 4, chance = 52 },
                { item = "scrapmetal", min = 1, max = 3, chance = 34 },
                { item = "cloth", min = 2, max = 4, chance = 32 },
                { item = "bandage", min = 1, max = 1, chance = 48 },
                { item = "water_bottle", min = 1, max = 1, chance = 35 },
                { item = "money", min = 100, max = 350, chance = 55 }
            }
        },
        green = {
            label = "Yeşil Bölge",
            lootTable = {
                { item = "ammo-9", min = 20, max = 45, chance = 100 },
                { item = "metalscrap", min = 2, max = 5, chance = 64 },
                { item = "scrapmetal", min = 2, max = 4, chance = 52 },
                { item = "rubber", min = 1, max = 3, chance = 32 },
                { item = "cloth", min = 3, max = 6, chance = 42 },
                { item = "gunpowder", min = 1, max = 2, chance = 16 },
                { item = "bandage", min = 1, max = 2, chance = 60 },
                { item = "water_bottle", min = 1, max = 2, chance = 45 },
                { item = "burncream", min = 1, max = 1, chance = 24 },
                { item = "money", min = 200, max = 600, chance = 65 }
            }
        },
        red = {
            label = "Kırmızı Bölge",
            lootTable = {
                { item = "ammo-9", min = 25, max = 60, chance = 100 },
                { item = "metalscrap", min = 3, max = 6, chance = 76 },
                { item = "scrapmetal", min = 3, max = 6, chance = 68 },
                { item = "rubber", min = 2, max = 4, chance = 48 },
                { item = "cloth", min = 4, max = 7, chance = 44 },
                { item = "gunpowder", min = 2, max = 4, chance = 30 },
                { item = "bandage", min = 1, max = 2, chance = 70 },
                { item = "water_bottle", min = 1, max = 2, chance = 50 },
                { item = "burncream", min = 1, max = 2, chance = 30 },
                { item = "pistol_blueprint", min = 1, max = 1, chance = 3 },
                { item = "combatpistol_blueprint", min = 1, max = 1, chance = 2 },
                { item = "microsmg_blueprint", min = 1, max = 1, chance = 1 },
                { item = "smg_blueprint", min = 1, max = 1, chance = 1 },
                { item = "carbinerifle_blueprint", min = 1, max = 1, chance = 1 },
                { item = "assaultrifle_blueprint", min = 1, max = 1, chance = 1 },
                { item = "weapon_pistol", min = 1, max = 1, chance = 8 },
                { item = "money", min = 350, max = 900, chance = 75 }
            }
        },
        yellow = {
            label = "Sarı Bölge",
            lootTable = {
                { item = "ammo-9", min = 35, max = 80, chance = 100 },
                { item = "metalscrap", min = 4, max = 8, chance = 84 },
                { item = "scrapmetal", min = 4, max = 8, chance = 80 },
                { item = "rubber", min = 2, max = 5, chance = 58 },
                { item = "cloth", min = 5, max = 9, chance = 58 },
                { item = "gunpowder", min = 3, max = 5, chance = 44 },
                { item = "bandage", min = 1, max = 3, chance = 80 },
                { item = "water_bottle", min = 1, max = 2, chance = 55 },
                { item = "burncream", min = 1, max = 2, chance = 40 },
                { item = "pistol_blueprint", min = 1, max = 1, chance = 10 },
                { item = "combatpistol_blueprint", min = 1, max = 1, chance = 8 },
                { item = "microsmg_blueprint", min = 1, max = 1, chance = 6 },
                { item = "smg_blueprint", min = 1, max = 1, chance = 5 },
                { item = "carbinerifle_blueprint", min = 1, max = 1, chance = 3 },
                { item = "assaultrifle_blueprint", min = 1, max = 1, chance = 2 },
                { item = "weapon_pistol", min = 1, max = 1, chance = 12 },
                { item = "money", min = 500, max = 1400, chance = 85 }
            }
        }
    },
    -- Bölgesel loot tanımı yoksa fallback olarak kullanılan genel ARC loot havuzu.
    LootTable = {
        { item = "ammo-9", min = 20, max = 60, chance = 100 },
        { item = "metalscrap", min = 2, max = 5, chance = 58 },
        { item = "scrapmetal", min = 2, max = 5, chance = 48 },
        { item = "rubber", min = 1, max = 3, chance = 30 },
        { item = "cloth", min = 2, max = 5, chance = 36 },
        { item = "gunpowder", min = 1, max = 3, chance = 20 },
        { item = "bandage", min = 1, max = 2, chance = 60 },
        { item = "burncream", min = 1, max = 2, chance = 25 },
        { item = "water_bottle", min = 1, max = 2, chance = 40 },
        { item = "pistol_blueprint", min = 1, max = 1, chance = 2 },
        { item = "combatpistol_blueprint", min = 1, max = 1, chance = 1 },
        { item = "weapon_pistol", min = 1, max = 1, chance = 10 },
        { item = "money", min = 250, max = 1000, chance = 75 }
    }
}
-- [MARKET GELİŞTİRMELERİ]
-- Marketten satın alınabilen kalıcı geliştirmeler.
-- price: Satın alma maliyeti
-- value: Metadata'ya yazılacak gerçek değer
-- label: Menüde görünen isim
-- metadataName: Oyuncu metadata'sında güncellenecek alan
-- sqlColumn: Kalıcılık için veritabanında güncellenecek kolon
-- ammoType/ammoAmount: Silah paketleri için yanında verilecek mühimmat
Config.Upgrades = {
    ["armor"] = {
        price = 50000,
        value = 100,
        label = "Çelik Yelek (100 Zırh)",
        metadataName = "survival_armor",
        sqlColumn = "survival_armor"
    },
    ["weapon_microsmg"] = {
        price = 100000,
        value = "WEAPON_MICROSMG",
        label = "Uzi Paketi",
        metadataName = "survival_weapon",
        sqlColumn = "survival_weapon",
        ammoType = "ammo-45",
        ammoAmount = 1000
    },
    ["weapon_assaultrifle"] = {
        price = 100000,
        value = "WEAPON_ASSAULTRIFLE",
        label = "AK-47 Paketi",
        metadataName = "survival_weapon",
        sqlColumn = "survival_weapon",
        ammoType = "ammo-rifle2",
        ammoAmount = 1000
    },
}
populationConfig = {

    loadAllPedsAfter = 20, -- seconds

    spawnDistance = 20,

    -- Liste de peds: https://docs.fivem.net/docs/game-references/ped-models/ ou https://wiki.rage.mp/index.php?title=Peds


    -- Création de groupe:

    -- Filter                   -> peut être tout ce qui est dans l'enum peds.lua, défini sur nil = peut être tout type de ped
    -- FilterAnim               -> peut être tout ce qui est dans l'enum animations.lua, défini sur nil == peut être tout type d'anim, défini sur {} = pas d'animation
    -- predefinedModel          -> Si non null, filter sera ignoré, et tous les peds de ce groupe seront remplacés par le modèle indiqué
    -- peds                     -> Collection d'information de localisation
       --- vector       -> coordonnées x,y & z
       --- heading      -> angle (orientation)




    -- Exemple 1: deux jardiniers: https://cdn.discordapp.com/attachments/737781060187717673/738908056724832316/unknown.png
    filteredGroup = {
     --[[   [1] = {
            predefinedModel = "s_m_m_gardener_01",
            filter = nil,
            filterAnim = {"WORLD_HUMAN_GARDENER_LEAF_BLOWER","WORLD_HUMAN_JANITOR"},
            peds = {
                {vector = vector3(270.5746, -834.017, 29.28668),heading = 161.89764404296},
                {vector = vector3(275.606, -833.079, 29.28406),heading = 214.03770446778},
            },
        }, ]]

        -- Ballas Gang
        [1] = {
            predefinedModel = nil,
            filter = {"M_BALLAS"},
            filterAnim = {"WORLD_HUMAN_DRUG_DEALER","WORLD_HUMAN_PARTYING","WORLD_HUMAN_DRUG_DEALER_HARD"},
            peds = {
                {vector = vector3(38.97238, -1023.588, 29.51556),heading = 6.1268563270568, generated = false},
                {vector = vector3(39.82918, -1022.324, 29.5118),heading = 145.88632202148, generated = false},
                {vector = vector3(47.6555, -999.0498, 29.3528),heading = 21.200868606568, generated = false},
                {vector = vector3(46.02294, -998.4382, 29.3446),heading = 275.47485351562, generated = false},
            },
        },

        -- Crutial Fix
        [2] = {
            predefinedModel = nil,
            filter = {"M_CRUTIAL"},
            filterAnim = {"WORLD_HUMAN_AA_SMOKE","WORLD_HUMAN_AA_COFFEE","WORLD_HUMAN_PARTYING"},
            peds = {
                {vector = vector3(270.4544, -833.285, 29.29444),heading = 212.8542175293, generated = false},
                {vector = vector3(271.1428, -834.3292, 29.28062),heading = 32.451690673828, generated = false},
                {vector = vector3(278.6326, -824.2622, 29.29942),heading = 289.86868286132, generated = false},
                {vector = vector3(279.726, -823.7216, 29.30358),heading = 121.10584259034, generated = false},
                {vector = vector3(258.3354, -829.1286, 29.59774),heading = 214.90350341796, generated = false},
                {vector = vector3(259.0366, -830.002, 29.57518),heading = 38.846061706542, generated = false},
            },
        },

        -- Pizzaria
        [3] = {
            predefinedModel = nil,
            filter = {"M_PIZZA"},
            filterAnim = {"WORLD_HUMAN_AA_SMOKE","WORLD_HUMAN_AA_COFFEE","WORLD_HUMAN_PARTYING"},
            peds = {
                {vector = vector3(294.3154, -963.3304, 29.41844),heading = 32.105575561524, generated = false},
                {vector = vector3(293.6566, -962.1908, 29.42148),heading = 211.18255615234, generated = false},
                {vector = vector3(286.9628, -960.2782, 29.41864),heading = 113.34651184082, generated = false},
                {vector = vector3(285.8414, -960.5946, 29.41864),heading = 277.51934814454, generated = false},
                {vector = vector3(278.1052, -963.9194, 29.38642),heading = 358.21514892578, generated = false},
                {vector = vector3(278.118, -962.9832, 29.38658),heading = 177.6332244873, generated = false},
            },
        },

        -- Cube
        [4] = {
            predefinedModel = nil,
            filter = {"M_CUBE"},
            filterAnim = {"WORLD_HUMAN_AA_SMOKE","WORLD_HUMAN_AA_COFFEE","WORLD_HUMAN_MUSICIAN","WORLD_HUMAN_TOURIST_MAP","WORLD_HUMAN_PARTYING"},
            peds = {
                {vector = vector3(244.7438, -888.7612, 30.49212),heading = 9.8495197296142, generated = false},
                {vector = vector3(244.6276, -887.5434, 30.49212),heading = 190.41569519042, generated = false},
                {vector = vector3(242.8684, -888.773, 30.49212),heading = 275.93423461914, generated = false},
                {vector = vector3(218.8178, -862.5778, 30.28984),heading = 234.9405670166, generated = false},
                {vector = vector3(219.102, -864.113, 30.28022),heading = 359.06704711914, generated = false},
                {vector = vector3(220.3954, -862.935, 30.29222),heading = 75.25749206543, generated = false},
                {vector = vector3(237.3774, -824.163, 30.10622),heading = 170.42152404786, generated = false},
            },
        },

        -- Salle Sport
        [5] = {
            predefinedModel = nil,
            filter = {"M_MUSLCE"},
            filterAnim = {"WORLD_HUMAN_AA_SMOKE","WORLD_HUMAN_AA_COFFEE","WORLD_HUMAN_PARTYING"},
            peds = {
                {vector = vector3(-45.05776, -1286.446, 29.18616),heading = 297.68310546875, generated = false},
                {vector = vector3(-43.79668, -1286.108, 29.08874),heading = 87.274932861328, generated = false},
                {vector = vector3(-44.76364, -1285.39, 29.16344),heading = 177.18658447266, generated = false},
                {vector = vector3(-45.33664, -1280.504, 29.20714),heading = 272.88012695312, generated = false},
                {vector = vector3(-44.19262, -1280.506, 29.11896),heading = 94.42293548584, generated = false},
            },
        },

        -- Unicorn
        [6] = {
            predefinedModel = nil,
            filter = {"M_UNICORN"},
            filterAnim = {"WORLD_HUMAN_AA_SMOKE","WORLD_HUMAN_AA_COFFEE","WORLD_HUMAN_DRUG_DEALER"},
            peds = {
                {vector = vector3(120.2126, -1305.254, 29.23274),heading = 204.3853149414, generated = false},
                {vector = vector3(120.704, -1306.284, 29.23274),heading = 23.561252593994, generated = false},
                {vector = vector3(123.063, -1302.876, 29.23274),heading = 211.8744506836, generated = false},
                {vector = vector3(123.1254, -1303.752, 29.23274),heading = 296.42572021484, generated = false},
                {vector = vector3(124.3738, -1303.436, 29.23274),heading = 92.392578125, generated = false},
                {vector = vector3(116.1946, -1307.46, 29.23274),heading = 295.17010498046, generated = false},
                {vector = vector3(117.7088, -1306.674, 29.23274),heading = 113.32430267334, generated = false},
                {vector = vector3(136.0444, -1294.87, 29.23274),heading = 211.55773925782, generated = false},
                {vector = vector3(136.7018, -1295.9, 29.23274),heading = 30.6542263031, generated = false},
                {vector = vector3(137.5828, -1299.336, 29.23274),heading = 121.41456604004, generated = false},
            }, 
        }, 

      -- Quartier Families
        [7] = {
            predefinedModel = nil,
            filter = {"M_FAMILIES"},
            filterAnim = {"WORLD_HUMAN_AA_SMOKE","WORLD_HUMAN_AA_COFFEE","WORLD_HUMAN_DRUG_DEALER"},
            peds = {
                {vector = vector3(-125.252, -1548.822, 34.14222),heading = 352.52960205078, generated = false},
                {vector = vector3(-125.1162, -1547.658, 34.12826),heading = 160.05937194824, generated = false},
                {vector = vector3(-160.6414, -1545.112, 35.05936),heading = 258.24377441406, generated = false},
                {vector = vector3(-158.7888, -1542.76, 35.07282),heading = 185.25358581542, generated = false},
                {vector = vector3(-163.1426, -1594.792, 34.2339),heading = 17.667263031006, generated = false},
                {vector = vector3(-162.7932, -1593.39, 34.28184),heading = 138.61250305176, generated = false},
                {vector = vector3(-164.6214, -1593.952, 34.27106),heading = 255.40454101562, generated = false},
                {vector = vector3(-192.3724, -1643.462, 33.4805),heading = 16.983350753784, generated = false},
            }, 
        }, 

       -- Sud Mecano
        [8] = {
            predefinedModel = nil,
            filter = {"M_MECANO"},
            filterAnim = {"WORLD_HUMAN_AA_SMOKE","WORLD_HUMAN_AA_COFFEE"},
            peds = {
                {vector = vector3(-76.66336, -1829.558, 26.9516),heading = 281.15158081054, generated = false},
                {vector = vector3(-75.50286, -1830.242, 26.94846),heading = 39.214752197266, generated = false},
                {vector = vector3(-75.67026, -1828.816, 26.94188),heading = 141.14442443848, generated = false},
                {vector = vector3(-120.8556, -1769.636, 29.84222),heading = 287.07489013672, generated = false},
                {vector = vector3(-119.9822, -1769.274, 29.85096),heading = 115.63781738282, generated = false},
            }, 
        }, 

        -- Ballas Gang
        [9] = {
            predefinedModel = nil,
            filter = {"M_BALLAS"},
            filterAnim = {"WORLD_HUMAN_DRUG_DEALER","WORLD_HUMAN_PARTYING","WORLD_HUMAN_DRUG_DEALER_HARD"},
            peds = {
                {vector = vector3(60.74662, -1889.886, 21.57908),heading = 69.865203857422, generated = false},
                {vector = vector3(60.17936, -1888.98, 21.60778),heading = 157.46516418458, generated = false},
                {vector = vector3(59.75436, -1890.074, 21.57948),heading = 330.9857788086, generated = false},
                {vector = vector3(54.4165, -1911.724, 21.63764),heading = 347.77389526368, generated = false},
                {vector = vector3(89.07668, -1948.874, 20.74228),heading = 311.70349121094, generated = false},
                {vector = vector3(90.13934, -1948.882, 20.74592),heading = 36.660705566406, generated = false},
                {vector = vector3(117.0654, -1949.208, 20.7402),heading = 64.206314086914, generated = false},
                {vector = vector3(116.0244, -1948.588, 20.67354),heading = 227.0082397461, generated = false},
            }, 
        }, 

        -- Corse Gang
        [10] = {
            predefinedModel = nil,
            filter = {"M_CORSE"},
            filterAnim = {"WORLD_HUMAN_DRUG_DEALER","WORLD_HUMAN_PARTYING","WORLD_HUMAN_DRUG_DEALER_HARD"},
            peds = {
                {vector = vector3(-1143.95, 4909.206, 220.968),heading = 75.30418395996, generated = false},
                {vector = vector3(-1144.984, 4908.296, 220.968),heading = 314.30029296875, generated = false},
                {vector = vector3(-1068.876, 4898.486, 214.2712),heading = 357.95794677734, generated = false},
                {vector = vector3(-1069.02, 4898.482, 214.2712),heading = 73.818077087402, generated = false},
                {vector = vector3(-1005.832, 4845.238, 275.008),heading = 57.884506225586, generated = false},
                {vector = vector3(-1005.5, 4847.588, 275.008),heading = 148.29331970214, generated = false},
            }, 
        }, 
    },

    -- Création individuelle

    -- model                    -> Est égal au modèle de ped souhaité
    -- vector                   -> coordonnées x,y & z
    -- heading                  -> angle (orientation)
    -- anim                     -> animation que le ped fera, toutes les animations dans animations.lua, si nil alors aucune animation ne sera faite
    
    individualPeds = {
        -- Génération d'un ped nu sans animation.
       {model = "s_m_y_garbage", vector = vector3(198.8864, -871.7292, 31.49832), heading = 245.30926513672, anim = "WORLD_HUMAN_GARDENER_LEAF_BLOWER", generated = false},


       {model = "a_m_o_tramp_01", vector = vector3(-44.7141, -1293.16, 29.17294), heading = 4.2280993461608, anim = "WORLD_HUMAN_STAND_FIRE", generated = false},
        -- Unicorn 1
        {model = "s_m_m_bouncer_01", vector = vector3(127.4016, -1299.712, 29.23272), heading = 208.07678222656, anim = "WORLD_HUMAN_GUARD_STAND", generated = false},
        -- Uncicorn 2
        {model = "s_m_m_bouncer_01", vector = vector3(130.4252, -1297.868, 29.23272), heading = 203.9095916748, anim = "WORLD_HUMAN_GUARD_STAND", generated = false},
        -- Rot Families
        {model = "a_c_rottweiler", vector = vector3(-193.0768, -1643.138, 33.48906), heading = 310.90145874024, anim = nil, generated = false},
        -- Mécano pied mur
        {model = "s_m_y_xmech_02", vector = vector3(-69.76858, -1817.914, 26.94198), heading = 231.11920166016, anim = "WORLD_HUMAN_LEANING", generated = false},
        -- Rot Ballas
        {model = "a_c_rottweiler", vector = vector3(53.29806, -1911.068, 21.6426), heading = 291.94549560546, anim = nil, generated = false},
        -- Corse Pied mur
        {model = "g_m_y_pologoon_01", vector = vector3(-1118.092, 4908.16, 218.5954), heading = 317.60125732422, anim = "WORLD_HUMAN_LEANING", generated = false},
        -- Corse guetteur
        {model = "g_m_y_pologoon_02", vector = vector3(-1044.876, 4917.872, 212.5322), heading = 268.52276611328, anim = "WORLD_HUMAN_GUARD_PATROL", generated = false},
        -- Corse guetteur2
        {model = "g_m_y_pologoon_02", vector = vector3(-1078.59, 4935.518, 229.2218), heading = 227.24421691894, anim = "WORLD_HUMAN_GUARD_PATROL", generated = false},
    },

}



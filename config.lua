populationConfig = {

    loadAllPedsAfter = 20, -- seconds

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
        [1] = {
            predefinedModel = "s_m_m_gardener_01",
            filter = nil,
            filterAnim = {"WORLD_HUMAN_GARDENER_LEAF_BLOWER","WORLD_HUMAN_JANITOR"},
            peds = {
                {vector = vector3(270.5746, -834.017, 29.28668),heading = 161.89764404296},
                {vector = vector3(275.606, -833.079, 29.28406),heading = 214.03770446778},
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
        {model = "a_m_m_acult_01", vector = vector3(240.79, -863.16, 29.71), heading = 90.0, anim = nil},
        -- Génération d'un ped nu qui joue d'un instrument de musique
    },

}



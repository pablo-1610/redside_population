populationConfig = {
    -- Peds groupés avec filtre

    -- Filter peut être tout ce qui est dans l'enum peds.lua, défini sur nil = peut être tout type de ped
    -- FilterAnim peut être tout ce qui est dans l'enum anim.lua, défini sur nil == peut être tout type d'anim, défini sur {} = pas d'animation
    
    filteredGroup = {
        [1] = { -- Groupe place des cubes
            filter = {"M_FAT"},
            filterAnim = nil
            peds = {
                {vector = vector3(270.5746, -834.017, 29.28668),heading = 161.89764404296},
                {vector = vector3(275.606, -833.079, 29.28406),heading = 214.03770446778},
            },
        },
    },

    individual = {
        -- Peds individuels aléatoires
    },
}



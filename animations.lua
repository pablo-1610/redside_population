populationAnimations = {
    randomize = function(filterArray)
        if filterArray == nil then
            return populationAnimations.enum[math.random(1,#populationAnimations.enum)]
        elseif filterArray == {} then 
            return nil
        else
            local possibleResult = nil
            local result = nil
            while result == nil do
                Citizen.Wait(50)
                possibleResult = populationAnimations.enum[math.random(1,#populationAnimations.enum)]
                for k,v in pairs(filterArray) do
                    if possibleResult == v then
                        result = possibleResult
                        return result
                    end
                end
            end
        end
    end,

    enum = {
        "NONE", -- Aucune animation, utilisable si besoin de mélanger animation & non animation
        "WORLD_HUMAN_AA_COFFEE", -- Café
        "WORLD_HUMAN_AA_SMOKE", -- Cigarette 
        
        "WORLD_HUMAN_CHEERING", -- Applaudissements
        
        "WORLD_HUMAN_HAMMERING", -- Marteau (tape sur le mur en face de lui)
        "WORLD_HUMAN_CONST_DRILL", -- Marteau piqueur

        "WORLD_HUMAN_CLIPBOARD", -- Bloc note en dur
        "CODE_HUMAN_MEDIC_TIME_OF_DEATH", -- Bloc note papier
        "WORLD_HUMAN_BINOCULARS", -- Jumelles
        "WORLD_HUMAN_CAR_PARK_ATTENDANT", -- Balise rouge de policier pour la circulation
        "WORLD_HUMAN_COP_IDLES", -- Position de policier (tiens la ceinture)

        "WORLD_HUMAN_DRUG_DEALER", -- Dealerr: Fume un gros joint xD)
        "WORLD_HUMAN_DRUG_DEALER_HARD", -- Dealer: Surveille autours de lui

        "WORLD_HUMAN_MOBILE_FILM_SHOCKING", -- Prends des photos avec son téléphone (comme si choquée par la scène qu'il prends en photo)

        "WORLD_HUMAN_GARDENER_LEAF_BLOWER", -- Jardinier: Machine pour souffler sur les feuillages
        "WORLD_HUMAN_GARDENER_PLANT", -- Jardinier: Plante dans la terre

        "WORLD_HUMAN_GUARD_PATROL", -- Sécurité: Observer autours de lui
        "WORLD_HUMAN_GUARD_STAND", -- Sécurité: Statique
        "WORLD_HUMAN_SECURITY_SHINE_TORCH", -- Sécurité: Observe avec une torche

        "WORLD_HUMAN_HANG_OUT_STREET", -- S"ennuie / s'impatiente sur place

        "WORLD_HUMAN_HIKER_STANDING", -- Tiens ses bretelles 

        "WORLD_HUMAN_HUMAN_STATUE", -- Statue humaine

        "WORLD_HUMAN_JANITOR", -- Concierge: Passer le balais
        "WORLD_HUMAN_MAID_CLEAN", -- Concierge: Essuie la surface en face de lui

        "WORLD_HUMAN_JOG_STANDING", -- Cours sur place

        "WORLD_HUMAN_LEANING", -- Patiente contre un mur

        "WORLD_HUMAN_MUSCLE_FLEX", -- Montre ses muscles
        "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS", -- Soulève des altères
        "WORLD_HUMAN_PUSH_UPS", -- Pompe
        "WORLD_HUMAN_SIT_UPS", -- Abdos
        "WORLD_HUMAN_YOGA", -- Yoga
        "WORLD_HUMAN_TENNIS_PLAYER", -- Joueur de tenis inactif sur place

        "WORLD_HUMAN_MUSICIAN", -- Musique (Guitar / Tamtam)
        "WORLD_HUMAN_PARTYING", -- S'ambiance avec une bière dans la main

        "WORLD_HUMAN_PAPARAZZI", -- Paparazzi

        "WORLD_HUMAN_PICNIC", -- Assis par terre
        "WORLD_HUMAN_STUPOR", -- Assis par terre mais de manières variées

        "WORLD_HUMAN_STAND_FIRE", -- Se réchauffe au dessus d'un baril de feu

        "WORLD_HUMAN_SUNBATHE", -- Bronze sur le ventre
        "WORLD_HUMAN_SUNBATHE_BACK", -- Bronze sur le dos

        "WORLD_HUMAN_TOURIST_MAP", -- Touriste: Carte
        "WORLD_HUMAN_TOURIST_MOBILE", -- Touriste: Prends en photo

        "WORLD_HUMAN_VEHICLE_MECHANIC", -- Garagiste: Sous la voiture en train d'éxaminer
        "WORLD_HUMAN_WELDING", -- Soudure

        "CODE_HUMAN_POLICE_INVESTIGATE", -- Policier: Enquête
        

        



        

        

    



    },
}
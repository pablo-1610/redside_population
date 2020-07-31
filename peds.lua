populationPeds = {
    randomize = function(filterArray)
        print("[Randomizer] Instancied")
        if filterArray == nil then
            print("[Randomizer] No filter")
            return populationPeds.enum[math.random(1,#populationPeds.enum)]
        else
            print("[Randomizer] Filter")
            local possibleResult = nil
            local result = nil
            while result == nil do
                Citizen.Wait(50)
                possibleResult = populationPeds.enum[math.random(1,#populationPeds.enum)]
                for k,v in pairs(filterArray) do
                    if possibleResult.type == v then
                        result = possibleResult
                        return result
                    end
                end
            end
        end
    end,
    
    enum = {
        -- Hommes
        {type="M_BLACK", model="a_m_m_afriamer_01"}, 
        {type="M_BLACK", model="a_m_m_eastsa_02"}, 
        {type="M_BLACK", model="a_m_m_malibu_01"}, 
        {type="M_BLACK", model="a_m_m_mexcntry_01"}, 
        {type="M_BLACK", model="a_m_m_mexlabor_01"}, 
        {type="M_BLACK", model="a_m_m_polynesian_01"}, 
        {type="M_BLACK", model="a_m_m_salton_03"}, 
        {type="M_BLACK", model="a_m_m_salton_04"}, 
        {type="M_BLACK", model="a_m_m_skidrow_01"}, 

        {type="M_CHIC", model="a_m_m_bevhills_01"}, 
        {type="M_CHIC", model="a_m_m_bevhills_02"},
        {type="M_CHIC", model="a_m_m_business_01"},
        {type="M_CHIC", model="a_m_y_gay_02"},
        {type="M_CHIC", model="a_m_y_genstreet_02"},
        {type="M_CHIC", model="a_m_y_smartcaspat_01"},
        
        {type="M_FAT", model="a_m_m_farmer_01"},
        {type="M_FAT", model="a_m_m_fatlatin_01"},
        {type="M_FAT", model="a_m_m_genfat_01"},
        {type="M_FAT", model="a_m_m_genfat_02"},

        {type="M_MUSLCE", model="a_m_m_beach_01"},
        {type="M_MUSLCE", model="a_m_m_beach_02"},
        {type="M_MUSLCE", model="a_m_y_beach_03"},
        {type="M_MUSLCE", model="a_m_y_beach_02"},
        {type="M_MUSLCE", model="a_m_y_jetski_01"},
        {type="M_MUSLCE", model="a_m_y_musclbeac_02"},
        {type="M_MUSLCE", model="a_m_y_runner_01"},

        {type="M_EAST", model="a_m_y_eastsa_02"},
        {type="M_EAST", model="a_m_y_eastsa_01"},
        {type="M_EAST", model="a_m_m_eastsa_01"},
        {type="M_EAST", model="a_m_m_eastsa_02"},
    },
}
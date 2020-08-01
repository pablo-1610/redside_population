populationPeds = {
    randomize = function(filterArray)
        if filterArray == nil then
            return populationPeds.enum[math.random(1,#populationPeds.enum)]
        else
            local possibleResult = nil
            local result = nil
            while result == nil do
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
        
        {type="M_BALLAS", model="g_m_y_ballaeast_01"},
        {type="M_BALLAS", model="g_m_y_ballaorig_01"},
        {type="M_BALLAS", model="g_f_y_ballas_01"},
        {type="M_BALLAS", model="ig_ballasog"},
        {type="M_BALLAS", model="g_m_y_ballasout_01"},

        {type="M_CRUTIAL", model="a_m_y_stwhi_01"},
        {type="M_CRUTIAL", model="u_f_m_miranda"},
        {type="M_CRUTIAL", model="mp_f_boatstaff_01"},
        {type="M_CRUTIAL", model="u_m_y_gunvend_01"},
        {type="M_CRUTIAL", model="a_f_y_eastsa_03"},
        {type="M_CRUTIAL", model="u_m_y_gunvend_01"},
        {type="M_CRUTIAL", model="ig_car3guy2"},
        {type="M_CRUTIAL", model="csb_denise_friend"},

        {type="M_PIZZA", model="s_m_o_busker_01"},
        {type="M_PIZZA", model="ig_car3guy2"},
        {type="M_PIZZA", model="csb_denise_friend"},
        {type="M_PIZZA", model="cs_debra"},
        {type="M_PIZZA", model="a_m_y_stwhi_01"},
        {type="M_PIZZA", model="u_f_m_miranda"},
        {type="M_PIZZA", model="mp_f_boatstaff_01"},
        {type="M_PIZZA", model="u_m_y_gunvend_01"},

        {type="M_CUBE", model="a_f_y_eastsa_03"},
        {type="M_CUBE", model="u_m_y_gunvend_01"},
        {type="M_CUBE", model="s_m_m_hairdress_01"},
        {type="M_CUBE", model="a_m_y_latino_01"},
        {type="M_CUBE", model="g_m_y_mexgoon_02"},
        {type="M_CUBE", model="u_m_y_mani"},
        {type="M_CUBE", model="u_m_y_guido_01"},

        {type="M_UNICORN", model="u_m_m_aldinapoli"},
        {type="M_UNICORN", model="a_f_m_beach_01"},
        {type="M_UNICORN", model="a_m_y_beachvesp_02"},
        {type="M_UNICORN", model="a_f_y_bevhills_01"},
        {type="M_UNICORN", model="mp_f_boatstaff_01"},
        {type="M_UNICORN", model="a_f_y_genhot_01"},
        {type="M_UNICORN", model="s_f_y_hooker_01"},

        {type="M_FAMILIES", model="g_m_y_famca_01"},
        {type="M_FAMILIES", model="g_m_y_famdnf_01"},
        {type="M_FAMILIES", model="g_m_y_famfor_01"},
        {type="M_FAMILIES", model="g_f_y_families_01"},

        {type="M_MECANO", model="s_m_y_winclean_01"},
        {type="M_MECANO", model="s_m_y_xmech_01"},
        {type="M_MECANO", model="s_m_y_xmech_02"},
        {type="M_MECANO", model="cs_chengsr"},

        {type="M_CORSE", model="s_m_y_winclean_01"},
        {type="M_CORSE", model="s_m_y_winclean_01"},
        {type="M_CORSE", model="s_m_y_winclean_01"},
        {type="M_CORSE", model="s_m_y_winclean_01"},
        {type="M_CORSE", model="s_m_y_winclean_01"},
        {type="M_CORSE", model="s_m_y_winclean_01"},
    },
}
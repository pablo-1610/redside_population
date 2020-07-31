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
        "WORLD_HUMAN_AA_COFFEE",
        "WORLD_HUMAN_AA_SMOKE",
    },
}
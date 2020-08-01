Citizen.CreateThread(function()
    Citizen.Wait(1000*populationConfig.loadAllPedsAfter)
    local generatedModels = {}
    Citizen.Wait(10)
    -- Generating groups NPCs
    while true do
        Citizen.Wait(500)
        local pCoords = GetEntityCoords(PlayerPedId())

    for keyA,group in pairs(populationConfig.filteredGroup) do
        local filter = group.filter
        local peds = group.peds
        for keyB,v in pairs(group.peds) do
            local dst = GetDistanceBetweenCoords(pCoords, v.vector, true)
            
            if dst <= 10 and v.generated == false then


            local pedModel = nil
            if group.predefinedModel == nil then 
                local pedValue = populationPeds.randomize(filter)
                while pedValue == nil do Citizen.Wait(10) end
                pedModel = GetHashKey(pedValue.model)
            else 
                pedModel = GetHashKey(group.predefinedModel)
            end
            RequestModel(pedModel)
            while not HasModelLoaded(pedModel) do Citizen.Wait(100) end
            table.insert(generatedModels, pedModel)
            local position = groundVector(v.vector.x, v.vector.y, v.vector.z)

            -- rFramework friendly:
            --local finalEntity = CreatePed_(9,pedModel,position.x,position.y,position.z,v.heading,false,true)
            local finalEntity = CreatePed(9,pedModel,position.x,position.y,position.z,v.heading,false,true)

            SetEntityAsMissionEntity(finalEntity, true, true)
            SetBlockingOfNonTemporaryEvents(finalEntity,true)
            FreezeEntityPosition(finalEntity, true)
            SetEntityInvincible(finalEntity, true)
            local scenario = populationAnimations.randomize(group.filterAnim)
            if scenario ~= nil then
                if scenario ~= "NONE" then
                    TaskStartScenarioInPlace(finalEntity, scenario, 0, true)
                end
            else
            end
            print("[RS_POPULATION] Generated NPC (G:"..keyA.."| ID:"..keyB..") model: "..pedValue.model)
            v.generated = true
            Citizen.Wait(10)


            end

        end
    end


    end


    --[[
    for keyC,v in pairs(populationConfig.individualPeds) do
        local model = GetHashKey(v.model)
        RequestModel(model)
        while not HasModelLoaded(model) do Citizen.Wait(100) end
        table.insert(generatedModels, model)
        local position = groundVector(v.vector.x, v.vector.y, v.vector.z)

        -- rFramework friendly:
        local finalEntity = CreatePed_(9,pedModel,position.x,position.y,position.z,v.heading,false,true)
        --local finalEntity = CreatePed(9,model,position.x,position.y,position.z,v.heading,false,true)

        SetEntityAsMissionEntity(finalEntity, true, true)
        SetBlockingOfNonTemporaryEvents(finalEntity,true)
        FreezeEntityPosition(finalEntity, true)
        SetEntityInvincible(finalEntity, true)
        if v.anim ~= nil then
            TaskStartScenarioInPlace(finalEntity, v.anim, 0, true)
        end
        Citizen.Wait(100)
    end
    --]]

end)

function groundVector(x,y,z) 
    local _,groundZ,_ = GetGroundZAndNormalFor_3dCoord(x,y,z)
    return vector3(x,y,groundZ)
end
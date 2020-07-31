Citizen.CreateThread(function()
    Citizen.Wait(5000)
    -- Generating groups NPCs
    for keyA,group in pairs(populationConfig.filteredGroup) do
        local filter = group.filter
        local peds = group.peds
        for keyB,v in pairs(group.peds) do
            local pedValue = populationPeds.randomize(filter)
            while pedValue == nil do Citizen.Wait(10) end
            local pedModel = GetHashKey(pedValue.model)
            RequestModel(pedModel)
            while not HasModelLoaded(pedModel) do Citizen.Wait(10) end
            local position = groundVector(v.vector.x, v.vector.y, v.vector.z)

            -- rFramework friendly:
            --local finalEntity = CreatePed_(9,pedModel,position.x,position.y,position.z,v.heading,false,true)
            
            local finalEntity = CreatePed(9,pedModel,position.x,position.y,position.z,v.heading,false,true)
            SetEntityAsMissionEntity(finalEntity, true, true)
            SetBlockingOfNonTemporaryEvents(finalEntity,true)
            FreezeEntityPosition(finalEntity, true)
            SetEntityInvincible(finalEntity, true)
        end
    end
end)

function groundVector(x,y,z) 
    local _,groundZ,_ = GetGroundZAndNormalFor_3dCoord(x,y,z)
    return vector3(x,y,groundZ)
end
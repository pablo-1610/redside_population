Citizen.CreateThread(function()
    Citizen.Wait(5000)
    -- Generating groups NPCs
    for keyA,group in pairs(populationConfig.filteredGroup) do
        local filter = group.filter
        local peds = group.peds
        for keyB,ped in pairs(group) do
            local pedValue = populationPeds.randomize(filter)
            local pedModel = GetHashKey(pedValue.model)
            RequestModel(pedModel)
            while not HasModelLoaded(pedModel) do Citizen.Wait(10) end

            local pos = groundVector(ped.pos.x,ped.pos.y,ped.pos.z)

            local ped = CreatePed_(9,pedModel,pos.x,pos.y,pos.z,ped.pos.heading,false,true)
        end
    end
end)

function groundVector(x,y,z) 
    local _,groundZ,_ = GetGroundZAndNormalFor_3dCoord(pos.x,pos.y,pos.z)
    return vector3(x,y,groundZ)
end
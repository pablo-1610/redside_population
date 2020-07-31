function groundVector(x,y,z) 
    local _,groundZ,_ = GetGroundZAndNormalFor_3dCoord(pos.x,pos.y,pos.z)
    return vector3(x,y,groundZ)
end
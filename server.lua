local QBCore = exports["qb-core"]:GetCoreObject()

exports("getMemberFromGroupByCitizenId", function(...) exports["imm-groups"]:getMemberFromGroup(...) end)
exports("addMemberToGroupByCitizenId", function(...) exports["imm-groups"]:addMemberToGroup(...) end)
exports("removeMemberFromGroupByCitizenId", function(...) exports["imm-groups"]:removeMemberFromGroup(...) end)
exports("getMemberStateByCitizenId", function(...) exports["imm-groups"]:getMemberState(...) end)
exports("setMemberStateByCitizenId", function(...) exports["imm-groups"]:setMemberState(...) end)
exports("getGroupsFromMemberByCitizenId", function(...) exports["imm-groups"]:getGroupsFromMember(...) end)

exports("getMemberFromGroupBySource", function(groupId, source)
    local player = QBCore.Functions.GetPlayer(source)
    if (not player) then
        return false
    end

    return exports["imm-groups"]:getMemberFromGroup(groupId, player.PlayerData.citizenid)
end)

exports("addMemberToGroupBySource", function(groupId, source)
    local player = QBCore.Functions.GetPlayer(source)
    if (not player) then
        return false
    end

    return exports["imm-groups"]:addMemberToGroup(groupId, player.PlayerData.citizenid)
end)

exports("removeMemberFromGroupBySource", function(groupId, source)
    local player = QBCore.Functions.GetPlayer(source)
    if (not player) then
        return false
    end

    return exports["imm-groups"]:removeMemberFromGroup(groupId, player.PlayerData.citizenid)
end)

exports("getMemberStateBySource", function(groupId, source, key)
    local player = QBCore.Functions.GetPlayer(source)
    if (not player) then
        return false
    end

    return exports["imm-groups"]:getMemberState(groupId, player.PlayerData.citizenid, key)
end)

exports("setMemberStateBySource", function(groupId, source, key, value)
    local player = QBCore.Functions.GetPlayer(source)
    if (not player) then
        return false
    end
    return exports["imm-groups"]:setMemberState(groupId, player.PlayerData.citizenid, key, value)
end)

exports("getGroupsFromMemberBySource", function(source)
    local player = QBCore.Functions.GetPlayer(source)
    if (not player) then
        return false
    end

    return true, exports["imm-groups"]:getGroupsFromMember(player.PlayerData.citizenid)
end)
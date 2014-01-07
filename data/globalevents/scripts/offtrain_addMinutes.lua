    function onThink(interval) -- run it with interval 60 seconds
    for _, cid in pairs(getPlayersOnline()) do
    OfflineTraining_addTime(cid, 1)
    end
    return true
    end
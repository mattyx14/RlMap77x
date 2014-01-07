function onThink(interval)
	for _, cid in pairs(getPlayersOnline()) do
		OfflineTraining_addTime(cid, 1)
	end

	return true
end
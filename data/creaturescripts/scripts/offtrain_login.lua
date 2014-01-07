function onLogin(cid)
	OfflineTraining_initialize(cid)
	if(OfflineTraining_isTraining(cid)) then
		OfflineTraining_turnOffTraining(cid)
		OfflineTraining_addTrainedSkills(cid, math.min(OfflineTraining_getTime(cid), OfflineTraining_getOfflineTime(cid)))
		OfflineTraining_setTime(cid, math.abs(OfflineTraining_getTime(cid) - OfflineTraining_getOfflineTime(cid)))
		OfflineTraining_onEndTraining(cid)
	else
		OfflineTraining_setTime(cid, OfflineTraining_getTime(cid) + OfflineTraining_getOfflineTime(cid))
	end

   return true
end

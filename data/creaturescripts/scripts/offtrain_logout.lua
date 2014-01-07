-- 0.4 - offline training - logout.lua
function onLogout(cid)
   if(OfflineTraining_canStartTraining(cid)) then
     OfflineTraining_turnOnTraining(cid)
     OfflineTraining_onStartTraining(cid)
   end
   OfflineTraining_setLogoutTime(cid)
   return true
end
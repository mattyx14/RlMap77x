-- config, in percent of normal training with 2 trainers and player vocation mana regeneration [by food]
OfflineTraining_rates = {
[SKILL_CLUB] = 100,
[SKILL_SWORD] = 100,
[SKILL_AXE] = 100,
[SKILL_DISTANCE] = 100,
[SKILL_SHIELD] = 100,
[SKILL__MAGLEVEL] = 100
}
-- function that you should edit to make it add other skill etc.
function OfflineTraining_canStartTraining(cid) -- return bool
return getCreatureStorage(cid, 62669) > 0
end
function OfflineTraining_onStartTraining(cid)
-- maybe someone will need
-- to save your time, this: doPlayerPopupFYI(cid, "You started offline training.")
-- NOT WORK :(
end
function OfflineTraining_onEndTraining(cid)
doCreatureSetStorage(cid, 62669, 0)
end
function OfflineTraining_addTrainedSkills(cid, trainTime) -- time in minutes!
local timeInSeconds = trainTime * 60
local vocInfo = getVocationInfo(getPlayerVocation(cid))
if(getCreatureStorage(cid, 62669) == SKILL_SWORD) then
doPlayerAddSkillTry(cid, SKILL_SWORD, ((timeInSeconds * 1000) / vocInfo["attackSpeed"]) * OfflineTraining_rates[SKILL_SWORD] / 100, true)
elseif(getCreatureStorage(cid, 62669) == SKILL_AXE) then
doPlayerAddSkillTry(cid, SKILL_AXE, ((timeInSeconds * 1000) / vocInfo["attackSpeed"]) * OfflineTraining_rates[SKILL_AXE] / 100, true)
elseif(getCreatureStorage(cid, 62669) == SKILL__MAGLEVEL) then
doPlayerAddSpentMana(cid, ((timeInSeconds / vocInfo["manaGainTicks"]) * vocInfo["manaGain"]) * OfflineTraining_rates[SKILL__MAGLEVEL] / 100, true)
elseif(getCreatureStorage(cid, 62669) == SKILL_CLUB) then
doPlayerAddSkillTry(cid, SKILL_CLUB, ((timeInSeconds * 1000) / vocInfo["attackSpeed"]) * OfflineTraining_rates[SKILL_CLUB] / 100, true)
elseif(getCreatureStorage(cid, 62669) == SKILL_DISTANCE) then
doPlayerAddSkillTry(cid, SKILL_DISTANCE, ((timeInSeconds * 1000) / vocInfo["attackSpeed"]) * OfflineTraining_rates[SKILL_DISTANCE] / 100, true)
end
doPlayerAddSkillTry(cid, SKILL_SHIELD, timeInSeconds * OfflineTraining_rates[SKILL_SHIELD] / 100, true)
end

-- 4 functions to show right values on 'bar' in Tibia 9.6
function OfflineTraining_getTime(cid)
return getCreatureStorage(cid, 62666)
end
function OfflineTraining_setTime(cid, newTime)
-- set values only between 0 - 720 [12 hours]
doCreatureSetStorage(cid, 62666, math.max(0, math.min(newTime, 720)))
-- now code to force server to send 'PlayerStats' (including Offline Time)
-- we must change any stat: hp,mana,stamina,cap,soul,exp,level
doPlayerAddSoul(cid, 1)
doPlayerAddSoul(cid, -1)
end
function OfflineTraining_addTime(cid, addTime)
OfflineTraining_setTime(cid, OfflineTraining_getTime(cid) + addTime)
end
function OfflineTraining_removeTime(cid, removeTime)
OfflineTraining_setTime(cid, OfflineTraining_getTime(cid) - removeTime)
end

-- functions for library to add skills/mlvl
function OfflineTraining_initialize(cid)
if(OfflineTraining_getTime(cid) == -1) then
OfflineTraining_setTime(cid, 720)
OfflineTraining_setLogoutTime(cid) -- block problem with first login 'add time'
end
end
function OfflineTraining_isTraining(cid)
return (getCreatureStorage(cid, 62667) > 0)
end
function OfflineTraining_turnOnTraining(cid)
doCreatureSetStorage(cid, 62667, 1)
end
function OfflineTraining_turnOffTraining(cid)
doCreatureSetStorage(cid, 62667, 0)
end
function OfflineTraining_getOfflineTime(cid)
return math.floor((os.time() - getCreatureStorage(cid, 62668)) / 60)
end
function OfflineTraining_setLogoutTime(cid)
return doCreatureSetStorage(cid, 62668, os.time())
end
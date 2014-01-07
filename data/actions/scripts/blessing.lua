function onUse(cid, item, fromPosition, itemEx, toPosition)
	local playerBlessings = {}
	for i=1, 5 do
		if getPlayerBlessing(cid, i) then
			table.insert(playerBlessings, getBlessingName(i))
		end
	end

	local message = "You have no blessings."
	if #playerBlessings > 0 then
			message = "You have the following blessings: " .. concat(playerBlessings, ", ", " and ") .. "."
	end

	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, message)
	return true
end
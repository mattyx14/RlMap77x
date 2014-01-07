function onThink(interval, lastExecution)
local texts = {
	["Trainers"] = {{x=32366, y=32235, z=7}, CONST_ME_MAGIC_BLUE, TEXTCOLOR_LIGHTBLUE},
	["Trainers"] = {{x=32372, y=32235, z=7}, CONST_ME_MAGIC_BLUE, TEXTCOLOR_LIGHTBLUE},
	["Trainers"] = {{x=32345, y=32226, z=7}, CONST_ME_MAGIC_BLUE, TEXTCOLOR_LIGHTBLUE},
	["Back"] = {{x=32232, y=32241, z=7}, CONST_ME_MAGIC_BLUE, TEXTCOLOR_RED}
}

for text, param in pairs(texts) do
	doSendAnimatedText(param[1], text, param[3])
	doSendMagicEffect(param[1], param[2])
	end

	return true
end

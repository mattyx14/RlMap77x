function onThink(interval, lastExecution)
local texts = {
	[" Sword"] = {{x=32201, y=32219, z=7}, CONST_ME_MAGIC_BLUE, TEXTCOLOR_RED},
	[" Axe"] = {{x=32203, y=32219, z=7}, CONST_ME_MAGIC_BLUE, TEXTCOLOR_GREEN},
	[" Magic"] = {{x=32209, y=32219, z=7}, CONST_ME_MAGIC_BLUE, TEXTCOLOR_BLUE},
	[" Club"] = {{x=32205, y=32219, z=7}, CONST_ME_MAGIC_BLUE, TEXTCOLOR_YELLOW},
	[" Distance"] = {{x=32207, y=32219, z=7}, CONST_ME_MAGIC_BLUE, TEXTCOLOR_LIGHTBLUE}
}

for text, param in pairs(texts) do
	doSendAnimatedText(param[1], text, param[3])
	doSendMagicEffect(param[1], param[2])
	end

    return true
end

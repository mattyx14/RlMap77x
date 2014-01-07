function onUse(cid, item, frompos, item2, topos)
    tile1 = {x = 32100, y = 32205, z = 8, stackpos = 1} 
    tile2 = {x = 32101, y = 32205, z = 8, stackpos = 1} 
	local playerTile = {x = 32100, y = 32205, z = 8} 
	local playerTile1 = {x = 32101, y = 32205, z = 8} 
    gettile1 = getThingfromPos(tile1)
    gettile2 = getThingfromPos(tile2)
    if item.uid == 3009 and item.itemid == 1945 then 
        doCreateItem(493,1,tile1)
        doCreateItem(493,1,tile2)
        doCreateItem(4799,1,tile1)
        doCreateItem(4797,1,tile2)		
        doRemoveItem(gettile1.uid,1)
        doRemoveItem(gettile2.uid,1)		
		if isCreature(getTopCreature(playerTile).uid) then
			doTeleportThing(getTopCreature(playerTile).uid, {x = 32099, y = 32205, z = 8})
		end
		if isCreature(getTopCreature(playerTile1).uid) then
			doTeleportThing(getTopCreature(playerTile1).uid, {x = 32102, y = 32205, z = 8})
		end 
        doTransformItem(item.uid,item.itemid+1)
    elseif item.uid == 3009 and item.itemid == 1946 then
        doCreateItem(1284,1,tile1)
        doCreateItem(1284,1,tile2)
 
        doRemoveItem(gettile1.uid,1)
        doRemoveItem(gettile2.uid,1)
 
        doTransformItem(item.uid,item.itemid-1)        
    else
        doPlayerSendCancel(cid,"Sorry, not possible.")
    end
 
    return 1
end
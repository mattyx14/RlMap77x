function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10008 then
         queststatus = getPlayerStorageValue(cid,10008)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a fire axe.")
   bag = doPlayerAddItem(cid, 1987, 1)   
doAddContainerItem(bag, 2214, 1)
   doAddContainerItem(bag, 2201, 1)
   doAddContainerItem(bag, 2145, 7)
   doPlayerAddItem(cid, 2432, 1)
            setPlayerStorageValue(cid,10008,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "The corpse is empty")
         end
   end
      return 1
end
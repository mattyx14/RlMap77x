function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 1000 then
         queststatus = getPlayerStorageValue(cid,1000)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag.")
   bag = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(bag, 2407, 1)
   doAddContainerItem(bag, 2156, 1)
            setPlayerStorageValue(cid,1000,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
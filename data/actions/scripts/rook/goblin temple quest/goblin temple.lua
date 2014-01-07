function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3015 then
         queststatus = getPlayerStorageValue(cid,3015)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag.")
   container = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(container,2642,1)
   doAddContainerItem(container,2563,1)
   doAddContainerItem(container,20006,1)
            setPlayerStorageValue(cid,3015,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
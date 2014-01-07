function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3014 then
         queststatus = getPlayerStorageValue(cid,30114)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag.")
   container = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(container,2111,4)
   doAddContainerItem(container,1294,5)
            setPlayerStorageValue(cid,3014,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9509 then
         queststatus = getPlayerStorageValue(cid,9509)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag.")
   bag = doPlayerAddItem(cid,1987,1)
   doAddContainerItem(bag,2396,1)
   doAddContainerItem(bag,2409,1)
   setPlayerStorageValue(cid,9509,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
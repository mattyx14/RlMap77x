function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9501 then
         queststatus = getPlayerStorageValue(cid,9501)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag.")
   bag = doPlayerAddItem(cid,1987,1)
   doAddContainerItem(bag,2006,7)
   doAddContainerItem(bag,2260,1)
            setPlayerStorageValue(cid,9501,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9510 then
         queststatus = getPlayerStorageValue(cid,9510)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag.")
   bag = doPlayerAddItem(cid,1987,1)
   doAddContainerItem(bag,2197,1)
   doAddContainerItem(bag,2167,1)
            setPlayerStorageValue(cid,9510,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
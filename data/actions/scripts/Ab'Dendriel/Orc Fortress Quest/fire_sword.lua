function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9504 then
         queststatus = getPlayerStorageValue(cid,9504)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a fire sword.")
            doPlayerAddItem(cid,2392,1)
            setPlayerStorageValue(cid,9504,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
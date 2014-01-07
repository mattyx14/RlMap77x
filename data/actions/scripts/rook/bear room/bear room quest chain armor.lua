function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3000 then
         queststatus = getPlayerStorageValue(cid,3000)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a chain armor.")
            doPlayerAddItem(cid,2464,1)
            setPlayerStorageValue(cid,3000,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
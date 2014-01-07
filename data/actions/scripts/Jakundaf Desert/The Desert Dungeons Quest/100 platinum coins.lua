function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10103 then
         queststatus = getPlayerStorageValue(cid,10103)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a 100 platinum coins.")
            doPlayerAddItem(cid,2152,100)
            setPlayerStorageValue(cid,10103,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
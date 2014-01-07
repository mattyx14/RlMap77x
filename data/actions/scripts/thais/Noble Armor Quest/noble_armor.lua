function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4012 then
         queststatus = getPlayerStorageValue(cid,4012)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a noble armor.")
            doPlayerAddItem(cid,2486,1)
            setPlayerStorageValue(cid,4012,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
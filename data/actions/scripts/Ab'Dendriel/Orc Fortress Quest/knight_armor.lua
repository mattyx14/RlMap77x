function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9505 then
         queststatus = getPlayerStorageValue(cid,9505)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a knight armor.")
            doPlayerAddItem(cid,2476,1)
            setPlayerStorageValue(cid,9505,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
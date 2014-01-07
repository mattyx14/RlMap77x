function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10016 then
         queststatus = getPlayerStorageValue(cid,10016)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a golden armor.")
            doPlayerAddItem(cid,2466,1)
            setPlayerStorageValue(cid,10016,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
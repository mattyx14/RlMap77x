function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10022 then
         queststatus = getPlayerStorageValue(cid,10022)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a vampire shield.")
            doPlayerAddItem(cid,2534,1)
            setPlayerStorageValue(cid,10022,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
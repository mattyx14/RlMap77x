function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9020 then
         queststatus = getPlayerStorageValue(cid,9020)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found tower shield.")
            doPlayerAddItem(cid,2528,1)
            setPlayerStorageValue(cid,9020,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
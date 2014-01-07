function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10003 then
         queststatus = getPlayerStorageValue(cid,10003)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a demon helmet.")
            doPlayerAddItem(cid,2493,1)
            setPlayerStorageValue(cid,10003,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
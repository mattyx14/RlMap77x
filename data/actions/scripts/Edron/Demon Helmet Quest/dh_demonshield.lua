function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10004 then
         queststatus = getPlayerStorageValue(cid,10004)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a demon shield.")
            doPlayerAddItem(cid,2520,1)
            setPlayerStorageValue(cid,10004,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
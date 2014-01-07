function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10005 then
         queststatus = getPlayerStorageValue(cid,10005)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a steel boots.")
            doPlayerAddItem(cid,2645,1)
            setPlayerStorageValue(cid,10005,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
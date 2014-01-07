function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10061 then
         queststatus = getPlayerStorageValue(cid,10061)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a scale armor.")
            doPlayerAddItem(cid,2483,1)
            setPlayerStorageValue(cid,10061,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
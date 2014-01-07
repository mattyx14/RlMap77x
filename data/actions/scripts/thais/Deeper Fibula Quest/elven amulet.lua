function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4002 then
         queststatus = getPlayerStorageValue(cid,4002)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found an elven amulet.")
            doPlayerAddItem(cid,2198,1)
            setPlayerStorageValue(cid,4002,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
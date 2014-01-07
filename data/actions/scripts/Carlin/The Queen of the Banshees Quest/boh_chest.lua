function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9024 then
         queststatus = getPlayerStorageValue(cid,9024)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found boots of haste.")
            doPlayerAddItem(cid,2195,1)
            setPlayerStorageValue(cid,9024,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
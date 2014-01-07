function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4007 then
         queststatus = getPlayerStorageValue(cid,4007)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a magician hat.")
            doPlayerAddItem(cid,2662,1)
            setPlayerStorageValue(cid,4007,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
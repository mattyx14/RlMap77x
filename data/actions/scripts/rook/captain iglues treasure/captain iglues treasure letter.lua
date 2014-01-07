function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3006 then
         queststatus = getPlayerStorageValue(cid,3006)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a letter.")
            doPlayerAddItem(cid,2160,1)
            setPlayerStorageValue(cid,2597,2)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
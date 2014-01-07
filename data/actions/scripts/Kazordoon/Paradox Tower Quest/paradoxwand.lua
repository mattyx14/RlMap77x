function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8014 then
         queststatus = getPlayerStorageValue(cid,8014)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a tempest rod.")
            doPlayerAddItem(cid,2183,1)
            setPlayerStorageValue(cid,8014,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
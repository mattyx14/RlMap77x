function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8016 then
         queststatus = getPlayerStorageValue(cid,8016)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a war hammer.")
            doPlayerAddItem(cid,2391,1)
            setPlayerStorageValue(cid,8016,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
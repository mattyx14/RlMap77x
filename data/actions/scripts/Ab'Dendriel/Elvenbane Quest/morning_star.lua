function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9503 then
         queststatus = getPlayerStorageValue(cid,9503)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a morning star.")
            doPlayerAddItem(cid,2394,1)
            setPlayerStorageValue(cid,9503,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
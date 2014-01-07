function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9003 then
         queststatus = getPlayerStorageValue(cid,9003)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a crystal wand.")
            doPlayerAddItem(cid,2184,1)
            setPlayerStorageValue(cid,9003,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
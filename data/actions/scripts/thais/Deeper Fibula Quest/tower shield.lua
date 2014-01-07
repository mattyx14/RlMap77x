function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4004 then
         queststatus = getPlayerStorageValue(cid,4004)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a tower shield.")
            doPlayerAddItem(cid,2528,1)
            setPlayerStorageValue(cid,4004,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
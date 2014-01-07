function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8013 then
         queststatus = getPlayerStorageValue(cid,8013)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found some talons.")
            doPlayerAddItem(cid,2151,32)
            setPlayerStorageValue(cid,8013,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
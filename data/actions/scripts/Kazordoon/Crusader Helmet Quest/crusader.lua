function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8000 then
         queststatus = getPlayerStorageValue(cid,8000)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a crusader helmet.")
            doPlayerAddItem(cid,2497,1)
            setPlayerStorageValue(cid,8000,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
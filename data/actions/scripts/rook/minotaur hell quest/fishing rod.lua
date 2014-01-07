function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3021 then
         queststatus = getPlayerStorageValue(cid,3021)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a fishing rod.")
            doPlayerAddItem(cid,2580,1)
            setPlayerStorageValue(cid,3021,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
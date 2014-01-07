function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3007 then
         queststatus = getPlayerStorageValue(cid,3007)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a combat knife.")
            doPlayerAddItem(cid,2404,1)
            setPlayerStorageValue(cid,3007,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
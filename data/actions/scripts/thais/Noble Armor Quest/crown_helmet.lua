function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4011 then
         queststatus = getPlayerStorageValue(cid,4011)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a crown helmet.")
            doPlayerAddItem(cid,2491,1)
            setPlayerStorageValue(cid,4011,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
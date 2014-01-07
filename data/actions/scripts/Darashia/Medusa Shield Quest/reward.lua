function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10101 then
         queststatus = getPlayerStorageValue(cid,10101)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a reward..")
   item_uid = doPlayerAddItem(cid,2536,1)
   item_uid = doPlayerAddItem(cid,2436,1)
   item_uid = doPlayerAddItem(cid,2656,1)
            setPlayerStorageValue(cid,10101,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
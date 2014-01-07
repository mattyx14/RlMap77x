function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8011 then
         queststatus = getPlayerStorageValue(cid,8011)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Phoenix Egg.")
            doPlayerAddItem(cid,2328,1)
            setPlayerStorageValue(cid,8011,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
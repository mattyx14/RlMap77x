function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10017 then
         queststatus = getPlayerStorageValue(cid,10017)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a guardian halberd.")
            doPlayerAddItem(cid,2427,1)
            setPlayerStorageValue(cid,10017,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
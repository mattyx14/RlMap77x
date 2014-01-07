function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4010 then
         queststatus = getPlayerStorageValue(cid,4010)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a naginata.")
            doPlayerAddItem(cid,2426,1)
            setPlayerStorageValue(cid,4010,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
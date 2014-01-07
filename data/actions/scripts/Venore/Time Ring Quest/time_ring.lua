function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4506 then
         queststatus = getPlayerStorageValue(cid,4506)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a time ring.")
            doPlayerAddItem(cid,2169,1)
            setPlayerStorageValue(cid,4506,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
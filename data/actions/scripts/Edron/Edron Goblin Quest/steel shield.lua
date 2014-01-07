function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10006 then
         queststatus = getPlayerStorageValue(cid,10006)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a steel shield..")
            doPlayerAddItem(cid,2509,1)
            setPlayerStorageValue(cid,10006,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
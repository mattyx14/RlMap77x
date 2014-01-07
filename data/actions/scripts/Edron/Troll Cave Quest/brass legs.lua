function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10019 then
         queststatus = getPlayerStorageValue(cid,10019)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a brass legs.")
            doPlayerAddItem(cid,2478,1)
            setPlayerStorageValue(cid,10019,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
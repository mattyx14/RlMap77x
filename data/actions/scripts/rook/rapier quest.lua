function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3019 then
         queststatus = getPlayerStorageValue(cid,3019)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a rapier.")
            doPlayerAddItem(cid,2384,1)
            setPlayerStorageValue(cid,3019,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
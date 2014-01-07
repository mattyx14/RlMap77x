function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9021 then
         queststatus = getPlayerStorageValue(cid,9021)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found giant sword.")
            doPlayerAddItem(cid,2393,1)
            setPlayerStorageValue(cid,9021,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
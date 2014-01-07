function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4005 then
         queststatus = getPlayerStorageValue(cid,4005)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a warrior helmet.")
            doPlayerAddItem(cid,2475,1)
            setPlayerStorageValue(cid,4005,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
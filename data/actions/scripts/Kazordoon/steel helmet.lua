function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8022 then
         queststatus = getPlayerStorageValue(cid,8022)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Steel Helmet.")
            doPlayerAddItem(cid,2457,1)
            setPlayerStorageValue(cid,8022,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
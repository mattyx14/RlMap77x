function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10021 then
         queststatus = getPlayerStorageValue(cid,10021)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a dragon lance.")
            doPlayerAddItem(cid,2414,1)
            setPlayerStorageValue(cid,10021,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
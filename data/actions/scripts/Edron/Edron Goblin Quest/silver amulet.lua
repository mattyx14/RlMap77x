function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10007 then
         queststatus = getPlayerStorageValue(cid,10007)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a silver amulet.")
            doPlayerAddItem(cid,2170,1)
            setPlayerStorageValue(cid,10007,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9019 then
         queststatus = getPlayerStorageValue(cid,9019)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a stone skin amulet.")
            doPlayerAddItem(cid,2197,5)
            setPlayerStorageValue(cid,9019,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
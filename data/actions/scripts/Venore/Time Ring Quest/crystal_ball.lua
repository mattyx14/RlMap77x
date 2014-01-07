function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4504 then
         queststatus = getPlayerStorageValue(cid,4504)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a crystal ball.")
            doPlayerAddItem(cid,2192,1)
            setPlayerStorageValue(cid,4504,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
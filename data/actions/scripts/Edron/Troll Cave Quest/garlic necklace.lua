function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10020 then
         queststatus = getPlayerStorageValue(cid,10020)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a garlic necklace.")
            doPlayerAddItem(cid,2199,1)
            setPlayerStorageValue(cid,10020,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
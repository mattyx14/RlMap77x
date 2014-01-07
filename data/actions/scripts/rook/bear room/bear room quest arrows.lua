function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3001 then
         queststatus = getPlayerStorageValue(cid,3001)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a 12 arrows and 40 gold coins.")
            doPlayerAddItem(cid,2544,12)
            doPlayerAddItem(cid,2148,40)
            setPlayerStorageValue(cid,3001,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
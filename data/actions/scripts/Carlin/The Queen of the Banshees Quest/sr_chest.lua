function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9022 then
         queststatus = getPlayerStorageValue(cid,9022)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a stealth ring.")
            doPlayerAddItem(cid,2165,1)
            setPlayerStorageValue(cid,9022,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
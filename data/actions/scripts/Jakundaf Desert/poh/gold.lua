function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10107 then
         queststatus = getPlayerStorageValue(cid,10107)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found 100 gold coins.")
            doPlayerAddItem(cid,2148,100)
            setPlayerStorageValue(cid,10107,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
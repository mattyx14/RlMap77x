function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8012 then
         queststatus = getPlayerStorageValue(cid,8012)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found 100 platinum coins.")
            doPlayerAddItem(cid,2152,100)
            setPlayerStorageValue(cid,8012,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
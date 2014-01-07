function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9506 then
         queststatus = getPlayerStorageValue(cid,9506)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a knight axe.")
            doPlayerAddItem(cid,2430,1)
            setPlayerStorageValue(cid,9506,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
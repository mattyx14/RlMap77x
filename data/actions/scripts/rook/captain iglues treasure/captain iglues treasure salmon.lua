function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3005 then
         queststatus = getPlayerStorageValue(cid,3005)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found 2 salmon's.")
            doPlayerAddItem(cid,2668,2)
            setPlayerStorageValue(cid,3005,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
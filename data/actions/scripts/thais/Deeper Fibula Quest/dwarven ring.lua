function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4001 then
         queststatus = getPlayerStorageValue(cid,4001)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a dwarven ring.")
            doPlayerAddItem(cid,2213,1)
            setPlayerStorageValue(cid,4001,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
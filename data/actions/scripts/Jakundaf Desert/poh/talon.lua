function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10108 then
         queststatus = getPlayerStorageValue(cid,10108)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Talon.")
            doPlayerAddItem(cid,2151,1)
            setPlayerStorageValue(cid,10108,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
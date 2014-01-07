function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10106 then
         queststatus = getPlayerStorageValue(cid,10106)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a Giant smithhammer.")
            doPlayerAddItem(cid,2321,1)
            setPlayerStorageValue(cid,10106,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
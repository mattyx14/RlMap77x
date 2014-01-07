function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9502 then
         queststatus = getPlayerStorageValue(cid,9502)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a dwarven shield.")
            doPlayerAddItem(cid,2525,1)
            setPlayerStorageValue(cid,9502,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
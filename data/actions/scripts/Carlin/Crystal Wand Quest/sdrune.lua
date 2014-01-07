function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9004 then
         queststatus = getPlayerStorageValue(cid,9004)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a sudden death rune.")
            doPlayerAddItem(cid,2263,6)
            setPlayerStorageValue(cid,9004,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
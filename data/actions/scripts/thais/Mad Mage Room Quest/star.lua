function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4009 then
         queststatus = getPlayerStorageValue(cid,4009)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a star amulet.")
            doPlayerAddItem(cid,2131,1)
            setPlayerStorageValue(cid,4009,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
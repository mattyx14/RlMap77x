function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 2999 then
         queststatus = getPlayerStorageValue(cid,2999)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a key.")
            doPlayerAddItem(cid,2088,1)
   doSetItemActionId(item_uid,14001)
            setPlayerStorageValue(cid,2999,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
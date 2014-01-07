function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3018 then
         queststatus = getPlayerStorageValue(cid,3018)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a key.")
            doPlayerAddItem(cid,2088,1)
   doSetItemActionId(item_uid,14000)
            setPlayerStorageValue(cid,3018,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
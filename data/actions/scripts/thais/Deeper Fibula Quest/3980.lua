function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4006 then
         queststatus = getPlayerStorageValue(cid,4006)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a golden key.")
   item_uid = doPlayerAddItem(cid,2091,1)
   doSetItemActionId(item_uid,3980)
            setPlayerStorageValue(cid,4006,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3304 then
         queststatus = getPlayerStorageValue(cid,3304)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a golden key 3304.")
   item_uid = doPlayerAddItem(cid,2091,1)
   doSetItemActionId(item_uid,3304)
            setPlayerStorageValue(cid,3304,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
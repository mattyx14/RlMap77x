function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8020 then
         queststatus = getPlayerStorageValue(cid,8020)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found key 3802.")
   item_uid = doPlayerAddItem(cid,2089,1)
   doSetItemActionId(item_uid,3802)
            setPlayerStorageValue(cid,8020,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
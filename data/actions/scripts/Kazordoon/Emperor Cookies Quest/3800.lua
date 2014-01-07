function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8018 then
         queststatus = getPlayerStorageValue(cid,8018)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found key 3800.")
   item_uid = doPlayerAddItem(cid,2089,1)
   doSetItemActionId(item_uid,3800)
            setPlayerStorageValue(cid,8018,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
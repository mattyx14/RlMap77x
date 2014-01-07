function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8019 then
         queststatus = getPlayerStorageValue(cid,8019)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found key 3801.")
   item_uid = doPlayerAddItem(cid,2089,1)
   doSetItemActionId(item_uid,3801)
            setPlayerStorageValue(cid,8019,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
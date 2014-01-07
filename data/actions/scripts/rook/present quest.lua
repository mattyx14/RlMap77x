function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3004 then
         queststatus = getPlayerStorageValue(cid,3004)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a backpack.")
   container = doPlayerAddItem(cid, 1988, 1)
   doAddContainerItem(container,1990,1)
            setPlayerStorageValue(cid,3004,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
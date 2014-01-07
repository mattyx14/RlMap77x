function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10109 then
         queststatus = getPlayerStorageValue(cid,10109)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag.")
   container = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(container,2377,1)
   doAddContainerItem(container,2547,5)
   doAddContainerItem(container,2546,12)
   doAddContainerItem(container,2217,1)
   doAddContainerItem(container,10109,1)
            setPlayerStorageValue(cid,10109,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
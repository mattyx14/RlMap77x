function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 11020 then
         queststatus = getPlayerStorageValue(cid,11020)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag.")
    container = doPlayerAddItem(cid,1987,1)
	doAddContainerItem(container,2545,1)
	doAddContainerItem(container,2544,1)
            setPlayerStorageValue(cid,11020,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end

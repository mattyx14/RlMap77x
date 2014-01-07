function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 9500 then
         queststatus = getPlayerStorageValue(cid,9500)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag.")
   bag = doPlayerAddItem(cid,1987,1)
   doAddContainerItem(bag,2175,1)
   doAddContainerItem(bag,2145,2)
   doAddContainerItem(bag,2148,100)
            setPlayerStorageValue(cid,9500,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
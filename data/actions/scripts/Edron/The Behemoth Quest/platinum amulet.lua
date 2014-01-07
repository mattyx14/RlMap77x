function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10018 then
         queststatus = getPlayerStorageValue(cid,10018)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a bag")
   bag = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(bag, 2171, 1)
   doAddContainerItem(bag, 2168, 1)
   doAddContainerItem(bag, 2124, 1)
   doAddContainerItem(bag, 2145, 3)
   doAddContainerItem(bag, 2146, 4)
            setPlayerStorageValue(cid,10018,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
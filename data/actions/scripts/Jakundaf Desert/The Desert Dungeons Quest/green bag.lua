function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10104 then
         queststatus = getPlayerStorageValue(cid,10104)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a green bag.")
   bag = doPlayerAddItem(cid, 1991, 1)
   doAddContainerItem(bag, 2200, 1)
   doAddContainerItem(bag, 2214, 1)
   doAddContainerItem(bag, 2162, 1)
   doAddContainerItem(bag, 2193, 1)
            setPlayerStorageValue(cid,10104,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
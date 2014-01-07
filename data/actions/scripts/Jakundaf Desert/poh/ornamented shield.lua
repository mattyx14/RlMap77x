function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10110 then
         queststatus = getPlayerStorageValue(cid,10110)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a backpack.")
    bag = doPlayerAddItem(cid, 1988,1)
   doAddContainerItem(bag, 2524, 1)
   doAddContainerItem(bag, 2383, 1)
   doAddContainerItem(bag, 2201, 1)
   doAddContainerItem(bag, 2164, 1)
   doAddContainerItem(bag, 2169, 1)
   doAddContainerItem(bag, 2152, 5)
            setPlayerStorageValue(cid,10110,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
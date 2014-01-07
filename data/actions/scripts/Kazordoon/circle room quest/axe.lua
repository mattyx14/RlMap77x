function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8017 then
         queststatus = getPlayerStorageValue(cid,8017)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a dwarven axe.")
            doPlayerAddItem(cid,2435,1)
            setPlayerStorageValue(cid,8017,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
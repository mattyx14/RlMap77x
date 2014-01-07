function onUse(cid, item, fromPosition, itemEx, toPosition)

   if item.uid == 3001 then
     queststatus = getPlayerStorageValue(cid, 3001)
     if queststatus == -1 then
      doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a brass helmet.")
      doPlayerAddItem(cid, 2460, 1)
      setPlayerStorageValue(cid, 3001, 1)
     else
      doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
     end
  end
   return true
end
function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4018 then
         queststatus = getPlayerStorageValue(cid,4018)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a battle hammer.")
            doPlayerAddItem(cid,2521,1)
            setPlayerStorageValue(cid,4018,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
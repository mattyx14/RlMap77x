function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 8021 then
         queststatus = getPlayerStorageValue(cid,8021)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a iron hammer.")
            doPlayerAddItem(cid,2422,1)
            setPlayerStorageValue(cid,8021,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
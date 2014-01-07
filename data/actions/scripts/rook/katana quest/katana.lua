function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3017 then
         queststatus = getPlayerStorageValue(cid,3017)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a katana sword.")
            doPlayerAddItem(cid,2412,1)
            setPlayerStorageValue(cid,3017,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
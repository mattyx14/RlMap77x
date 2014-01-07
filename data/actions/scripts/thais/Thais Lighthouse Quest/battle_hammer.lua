function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 4014 then
         queststatus = getPlayerStorageValue(cid,4014)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a battle hammer.")
            doPlayerAddItem(cid,2417,1)
            setPlayerStorageValue(cid,4014,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
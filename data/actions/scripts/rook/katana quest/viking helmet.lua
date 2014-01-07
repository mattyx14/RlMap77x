function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3016 then
         queststatus = getPlayerStorageValue(cid,3016)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a viking helmet.")
            doPlayerAddItem(cid,2473,1)
            setPlayerStorageValue(cid,3016,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
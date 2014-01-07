function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3020 then
         queststatus = getPlayerStorageValue(cid,3020)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a carlin sword.")
            doPlayerAddItem(cid,2395,1)
            setPlayerStorageValue(cid,3020,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
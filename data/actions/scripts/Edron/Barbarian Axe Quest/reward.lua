function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 10000 then
         queststatus = getPlayerStorageValue(cid,10000)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a barbarian axe and Scimitar.")
            doPlayerAddItem(cid, 2429, 1)
   doPlayerAddItem(cid, 2419, 1)
            setPlayerStorageValue(cid,10000,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
function onUse(cid, item, fromPosition, itemEx, toPosition)

      if item.uid == 3023 then
         queststatus = getPlayerStorageValue(cid,3023)
         if queststatus == -1 then
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found black book.")
            doPlayerAddItem(cid,1955,1)
 doSetItemText(item_uid, "Hardek *Bozo * Sam **** Oswald Partos *** Quentin * Tark *** Harsky *** Stutch * Ferumbras * Frodo ** Noodles ****")
            setPlayerStorageValue(cid,3023,1)
         else
            doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "It is empty.")
         end
   end
      return 1
end
local addon, ns = ...
local L = ns.L

--------------------------------------------------------------------------------
-- # MODULES > AUTOMATION > SELL JUNK
--------------------------------------------------------------------------------

local f = CreateFrame('Frame')
f:RegisterEvent('MERCHANT_SHOW')
f:SetScript('OnEvent', function()

  -- local bag, slot
  -- for bag = 0, 4 do
  --   for slot = 0, C_Container.GetContainerNumSlots(bag) do
  --     local item = C_Container.GetContainerItemLink(bag, slot)
  --     if item and (select(3, GetItemInfo(item)) == 0) then
  --       C_Container.UseContainerItem(bag, slot)
  --     end
  --   end
  -- end

  local totalPrice = 0
  for bag = 0, 4 do
    for bagSlots = 1, C_Container.GetContainerNumSlots(bag) do
      CurrentItemLink = C_Container.GetContainerItemLink(bag, bagSlots)
      if CurrentItemLink then
        _, _, itemRarity, _, _, _, _, _, _, _, itemSellPrice = GetItemInfo(CurrentItemLink)
        itemInfo = C_Container.GetContainerItemInfo(bag, bagSlots)
        if itemRarity == 0 and itemSellPrice ~= 0 then
          totalPrice = totalPrice + (itemSellPrice * itemInfo.stackCount)
          C_Container.UseContainerItem(bag, bagSlots)
          PickupMerchantItem()
        end
      end
    end
  end
  if totalPrice ~= 0 then
    DEFAULT_CHAT_FRAME:AddMessage('Klaz|cff1994ffScripts|r — |cnYELLOW_FONT_COLOR:'..L.AUTO_SELL_JUNK..':|r '..GetCoinTextureString(totalPrice), 255, 255, 255)
  end

end)

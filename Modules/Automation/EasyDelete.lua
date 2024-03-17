--------------------------------------------------------------------------------
-- # MODULES > AUTOMATION > EASY DELETE
--------------------------------------------------------------------------------
-- never type "DELETE" ever again

local deleteDialog = StaticPopupDialogs['DELETE_GOOD_ITEM']

if deleteDialog.OnShow then
  hooksecurefunc(deleteDialog, 'OnShow', function(s)
    s.editBox:SetText(DELETE_ITEM_CONFIRM_STRING)
    s.editBox:SetAutoFocus(false)
    s.editBox:ClearFocus()
  end)
end

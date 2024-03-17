local addon, ns = ...
local L = ns.L
local T = ns.T

--------------------------------------------------------------------------------
-- # CORE > CONFIG
--------------------------------------------------------------------------------

-- ## RESET
--------------------------------------------------------------------------------

StaticPopupDialogs.KLAZSCRIPTS_RESET = {
  text = L.CONFIG_POPUP_RESET,
  button1 = ACCEPT,
  button2 = CANCEL,
  OnAccept = function()

  end,
  OnCancel = function() end,
  showAlert = true,
  timeout = 0,
  whileDead = 1,
  hideOnEscape = true,
  preferredIndex = 5,
}
-- ## SLASH COMMAND
--------------------------------------------------------------------------------

SlashCmdList['KLAZSCRIPTS'] = function(msg)
  if string.lower(msg) == 'reset' then
    StaticPopup_Show('KLAZSCRIPTS_RESET')
  else
    print('------------------------------------------')
    print('Klaz|cff1994ffScripts|r')
    print('------------------------------------------')
  end
end
SLASH_KLAZSCRIPTS1 = '/klazscripts'
SLASH_KLAZSCRIPTS2 = '/kscripts'

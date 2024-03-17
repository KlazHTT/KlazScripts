local addon, ns = ...
local L = {}
ns.L = L

--------------------------------------------------------------------------------
-- # CORE > LOCALIZATION
--------------------------------------------------------------------------------

-- ## ENGLISH
--------------------------------------------------------------------------------

L['COMMAND_PATCH_NUMBER'] = 'Patch'
L['COMMAND_CLEAR_CHAT'] = 'Cleared text in all chat frames'

L['CONFIG_POPUP_RESET'] = 'Klaz|cff1994ffScripts|r\n|cnNORMAL_FONT_COLOR:Apply personalized settings?|r\n|cnRED_FONT_COLOR:Warning! Changes will occur to your UI!'

L['AUTO_REPAIR'] = 'Repair cost'
L['AUTO_REPAIR_GUILD'] = 'Repaired using guild funds'
L['AUTO_REPAIR_BROKE'] = 'You do not have enough gold to auto repair'
L['AUTO_SELL_JUNK'] = 'Sold junk items'

L['MAP_CURSOR'] = 'Cursor'
L['MAP_PLAYER'] = 'Player'
L['MAP_BOUNDS'] = 'Out of bounds'

local locale = GetLocale()
if locale == 'en_GB' or locale == 'enUS' then return end -- ENGLISH

-- ## OTHER
--------------------------------------------------------------------------------

-- if locale == 'esMX' then return end  -- SPANISH (MEXICO)
-- if locale == 'pt_BR' then return end -- PORTUGEUSE
-- if locale == 'de_DE' then return end -- GERMAN
-- if locale == 'es_ES' then return end -- SPANISH (SPAIN)
-- if locale == 'fr_FR' then return end -- FRENCH
-- if locale == 'it_IT' then return end -- ITALIAN
-- if locale == 'ru_RU' then return end -- RUSSIAN
-- if locale == 'ko_KR' then return end -- KOREAN
-- if locale == 'zh_TW' then return end -- CHINESE (TRADITIONAL)
-- if locale == 'zh_CN' then return end -- CHINESE (SIMPLIFIED)

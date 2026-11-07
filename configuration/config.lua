Config = {}

-- Language for the text players see. 'auto' follows ox_lib's language (setr ox:locale "de" in
-- server.cfg) and is English when that isn't set. Or name a file from locales/, such as 'de' or 'pt-br'.
Config.Locale = 'auto'

---------------------------------------------------------------------------
-- Changing seats on purpose

-- The key that moves the player to the seat beside them, such as from the front passenger seat to the
-- driver's seat. Players can change it in GTA's Settings -> Key Bindings -> FiveM. Codes:
-- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
-- Set Config.ShuffleKey = false for the command only, or Config.ShuffleCommand = false for neither.
Config.ShuffleKey = 'O'
Config.ShuffleCommand = 'shuffle'

-- /seat 1 moves to the driver's seat, /seat 2 the front passenger seat, 3 and 4 the back seats, and so
-- on for bigger vehicles. false to turn it off.
Config.SeatCommand = 'seat'

-- Fastest the vehicle can be going for a player to change seats, in Config.SpeedUnit. 0 for no limit.
Config.MaxSpeed = 10
Config.SpeedUnit = 'mph'     -- 'mph' or 'kmh'

---------------------------------------------------------------------------
-- Messages

-- Short messages when a seat is taken, the vehicle is going too fast, and so on.
Config.ShowMessages = true

-- How messages are shown.
-- 'auto' uses ox_lib notifications if ox_lib is running, otherwise GTA's notification feed.
-- 'ox_lib' or 'gta' to force one.
Config.Notifications = 'auto'

---------------------------------------------------------------------------

-- How often, in seconds, the setting is applied again. A player's character is replaced when they
-- respawn or change model, and a new character starts with GTA's defaults.
Config.ReapplySeconds = 1.0

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"

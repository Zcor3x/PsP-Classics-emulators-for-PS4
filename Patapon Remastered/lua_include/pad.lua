-- Recommended method to import this module:
--   local pad = require("pad")
--
-- Buttons marked PS4 are not used by the emulator, but can be read from Lua
--
-- Read the Pad state with getEmuObject().PadRead()
-- ie:
-- local padstate = getEmuObject().PadRead()
--

pad = {}

pad.L3        = 0x00000002	-- L3 (PS4)
pad.R3        = 0x00000004	-- R3 (PS4)
pad.OPTIONS   = 0x00000008	-- Options (PS4)
pad.UP        = 0x00000010	-- Up
pad.RIGHT     = 0x00000020	-- Right
pad.DOWN      = 0x00000040	-- Down
pad.LEFT      = 0x00000080	-- Left
pad.L2        = 0x00000100	-- L2 (PS4)
pad.R2        = 0x00000200	-- R2 (PS4)
pad.L1        = 0x00000400	-- L1
pad.R1        = 0x00000800	-- R1
pad.TRIANGLE  = 0x00001000	-- Triangle
pad.CIRCLE    = 0x00002000	-- Circle
pad.CROSS     = 0x00004000	-- Cross
pad.SQUARE    = 0x00008000	-- Square
pad.SELECT    = 0x00010000	-- Select
pad.START     = 0x00020000	-- Start

-- Automap SELECT or START to the Options Button, leaving the full touchar for the opposite, with getEmuObject().PadSetButtonsMode(mode)
-- ie:
-- getEmuObject().PadSetButtonsMode(pad.BUTTONS_MODE_OPTION_IS_SELECT)

pad.BUTTONS_MODE_NORMAL = 0 -- Touch bar is split in two for Start/Select. Option is unmapped (default behaviour)
pad.BUTTONS_MODE_OPTION_IS_SELECT = 1 -- Touch bar is Start. Option is Select
pad.BUTTONS_MODE_OPTION_IS_START = 2 -- Touch bar is Select. Option is Start

return pad

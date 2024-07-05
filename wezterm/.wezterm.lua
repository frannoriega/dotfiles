
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

-- Set nerd font
config.font = wezterm.font 'Hack Nerd Font'

-- Set catppuccin
config.color_scheme = 'catppuccin-mocha'

-- and finally, return the configuration to wezterm
return config

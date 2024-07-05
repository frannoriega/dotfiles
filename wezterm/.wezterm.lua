-- Function to detect the platform
function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

-- Set nerd font
config.font = wezterm.font 'Hack Nerd Font'

-- Set font size for MacOS
if os.capture('uname') == "Darwin" then
  config.font_size = 18.0
end

-- Set catppuccin
config.color_scheme = 'catppuccin-mocha'

-- and finally, return the configuration to wezterm
return config

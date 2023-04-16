-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

config.font = wezterm.font('ConsolaMono Nerd Font')
config.font_size = 14.5


config.color_scheme = 'Dracula+'

-- Run wsl in login mode
config.default_prog = { 'wsl', '~' }


config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

config.window_background_opacity = 0.9

-- and finally, return the configuration to wezterm
return config
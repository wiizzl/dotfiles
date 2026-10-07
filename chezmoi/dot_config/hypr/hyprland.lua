require("modules.autostart")
require("modules.input")
require("modules.looknfeel")
require("modules.rules")
require("modules.keybinds")

package.loaded["noctalia"] = nil
local ok, noctalia = pcall(function() return require("noctalia") end)
if ok then
  noctalia.apply_theme()
end

dofile(os.getenv("HOME") .. "/.config/hypr/hyprmoncfg-monitors.lua")

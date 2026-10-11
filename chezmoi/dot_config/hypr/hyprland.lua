require("modules.autostart")
require("modules.input")
require("modules.looknfeel")
require("modules.rules")
require("modules.keybinds")
require("noctalia").apply_theme()
require("modules.local")

---@format disable

-- Added by hyprmoncfg: its generated monitor rules load last, so nothing before this can override the applied layout.
do local path = (os.getenv("XDG_CONFIG_HOME") or os.getenv("HOME") .. "/.config") .. "/hypr/hyprmoncfg-monitors.lua"; local file = io.open(path, "r"); if file then file:close(); dofile(path) end end

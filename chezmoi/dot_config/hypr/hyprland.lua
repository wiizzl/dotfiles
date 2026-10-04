require("modules.autostart")
require("modules.input")
require("modules.looknfeel")
require("modules.rules")
require("modules.keybinds")

local ok, noctalia = pcall(function() return require("noctalia") end)
if ok then
  noctalia.apply_theme()
end

for _, file in ipairs({
  "prefs.lua",
  "monitors.lua"
}) do
  local path = os.getenv("HOME") .. "/.config/hypr/modules/" .. file
  local f = io.open(path, "r")

  if f then
    f:close()
    dofile(path)
  end
end

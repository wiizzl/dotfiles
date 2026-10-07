local mod = "SUPER"
local uwsm = "uwsm app -- "
local ipc = "noctalia msg "

hl.bind(mod .. " + RETURN", hl.dsp.exec_cmd(uwsm .. "alacritty"))
hl.bind(mod .. " + SHIFT + E", hl.dsp.exec_cmd(uwsm .. "nautilus --new-window"))
hl.bind(mod .. " + SHIFT + B", hl.dsp.exec_cmd(uwsm .. "helium-browser-bin --new-window"))

hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mod .. " + COMMA", hl.dsp.exec_cmd(ipc .. "settings-toggle"))

hl.bind(mod .. " + CTRL + V", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))
hl.bind(mod .. " + CTRL + E", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher /emo"))
hl.bind(mod .. " + CTRL + D", hl.dsp.exec_cmd(ipc .. "panel-toggle thaer99ob/default-apps:manager"))
hl.bind(mod .. " + CTRL + P", hl.dsp.exec_cmd("hyprpicker -aln"))

hl.bind(mod .. " + SHIFT + W", hl.dsp.exec_cmd(ipc .. "panel-toggle wallpaper"))
hl.bind(mod .. " + CTRL + W", hl.dsp.exec_cmd(ipc .. "panel-toggle noctalia/wallhaven:browser"))

hl.bind(mod .. " + SHIFT + S", hl.dsp.exec_cmd(ipc .. "screenshot-region"))
hl.bind(mod .. " + CTRL + S", hl.dsp.exec_cmd(ipc .. "screenshot-annotate"))

hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + SHIFT + Q", hl.dsp.window.kill())
hl.bind(mod .. " + CTRL + Q", hl.dsp.exec_cmd("uwsm stop"))

hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

hl.bind(mod .. " + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mod .. " + V", hl.dsp.window.float({ action = "toggle" }))

hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

for i = 1, 4 do
  local directions = { "left", "right", "up", "down" }
  hl.bind(mod .. " + " .. directions[i], hl.dsp.focus({ direction = directions[i] }))
  hl.bind(mod .. " + SHIFT + " .. directions[i], hl.dsp.window.move({ direction = directions[i] }))
end

for i = 1, 10 do
  local keycode = "code:" .. tostring(i + 9)

  hl.bind(mod .. " + " .. keycode, hl.dsp.focus({ workspace = i }))
  hl.bind(mod .. " + SHIFT + " .. keycode, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mod .. " + TAB", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + SHIFT + TAB", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mod .. " + X", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + X", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. "mic-mute"), { locked = true })
hl.bind("XF86Launch6", hl.dsp.exec_cmd(ipc .. "mic-mute"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd(ipc .. "media next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(ipc .. "media toggle"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. "media toggle"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(ipc .. "media previous"), { locked = true })

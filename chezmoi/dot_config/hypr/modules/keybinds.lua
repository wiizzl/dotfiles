local mod = "SUPER"
local uwsm = "uwsm app -- "

hl.bind(mod .. " + RETURN", hl.dsp.exec_cmd(uwsm .. "footclient"))
hl.bind(mod .. " + SHIFT + E", hl.dsp.exec_cmd(uwsm .. "nautilus --new-window"))
hl.bind(mod .. " + SHIFT + B", hl.dsp.exec_cmd(uwsm .. "helium-browser-bin --new-window"))

hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd(uwsm .. "vicinae toggle"))

hl.bind(mod .. " + CTRL + V", hl.dsp.exec_cmd(uwsm .. "vicinae vicinae://launch/clipboard/history"))
hl.bind(mod .. " + CTRL + E", hl.dsp.exec_cmd(uwsm .. "vicinae vicinae://launch/core/search-emojis"))
hl.bind(mod .. " + CTRL + W",
  hl.dsp.exec_cmd(uwsm .. "vicinae vicinae://launch/@sovereign/store.vicinae.awww-switcher/wpgrid"))
hl.bind(mod .. " + CTRL + P", hl.dsp.exec_cmd("hyprpicker -aln"))

hl.bind(mod .. " + L", function()
  local workspace = hl.get_active_special_workspace() or hl.get_active_workspace()
  if not workspace then
    return
  end

  local next_layout = (workspace.tiled_layout == "dwindle") and "scrolling" or "dwindle"
  local ws_target = workspace.special and tostring(workspace.name) or ("name:" .. tostring(workspace.name))

  hl.workspace_rule({ workspace = ws_target, layout = next_layout })
end)

hl.bind(mod .. " + CTRL + S", hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -'))
hl.bind(mod .. " + SHIFT + S", hl.dsp.exec_cmd('grim -g "$(slurp -d)" - | wl-copy'))

hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + SHIFT + Q", hl.dsp.window.kill())
hl.bind(mod .. " + CTRL + Q", hl.dsp.exec_cmd("uwsm stop"))

hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

hl.bind(mod .. " + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mod .. " + V", hl.dsp.window.float({ action = "toggle" }))

for i = 1, 4 do
  local directions = { "left", "right", "up", "down" }
  hl.bind(mod .. " + " .. directions[i], hl.dsp.focus({ direction = directions[i] }))
  hl.bind(mod .. " + SHIFT + " .. directions[i], hl.dsp.window.move({ direction = directions[i] }))
end

hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

for i = 1, 10 do
  local keycode = "code:" .. tostring(i + 9)

  hl.bind(mod .. " + " .. keycode, hl.dsp.focus({ workspace = i }))
  hl.bind(mod .. " + SHIFT + " .. keycode, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mod .. " + TAB", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + SHIFT + TAB", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mod .. " + X", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + X", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
  { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
  { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86Launch6", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

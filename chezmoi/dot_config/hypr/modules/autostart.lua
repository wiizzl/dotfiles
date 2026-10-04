hl.on("hyprland.start", function()
  hl.exec_cmd("systemctl --user start podman.socket")
  hl.exec_cmd("systemctl --user start hyprmoncfgd")

  hl.exec_cmd("uwsm app -- noctalia")
end)

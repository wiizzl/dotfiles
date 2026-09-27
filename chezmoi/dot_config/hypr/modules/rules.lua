hl.window_rule({
  name           = "suppress-maximize-events",
  match          = { class = ".*" },
  suppress_event = "maximize",
})

hl.window_rule({
  name     = "fix-xwayland-drags",
  match    = {
    class      = "^$",
    title      = "^$",
    xwayland   = true,
    float      = true,
    fullscreen = false,
    pin        = false,
  },

  no_focus = true,
})

hl.workspace_rule({
  workspace = "special:magic",
  gaps_out = 30,
})

hl.layer_rule({
  name = "vicinae-no-animation",
  match = { namespace = "vicinae" },
  no_anim = true,
})

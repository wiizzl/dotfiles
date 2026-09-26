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

hl.window_rule({
  name   = "center-float-audio",
  match  = { class = "pavucontrol" },
  float  = true,
  center = true,
})

hl.window_rule({
  name   = "center-float-impala",
  match  = { class = "impala-tui" },
  float  = true,
  center = true,
})

hl.window_rule({
  name   = "center-float-bluetui",
  match  = { class = "bluetui-tui" },
  float  = true,
  center = true,
})

hl.window_rule({
  name   = "center-float-displays",
  match  = { class = "nwg-displays" },
  float  = true,
  center = true,
})

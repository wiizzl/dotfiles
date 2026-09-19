local colors = {
  primary = "rgb(cba6f7)",
  secondary = "rgb(45475a)",
}

hl.config({
  general = {
    gaps_in          = 3,
    gaps_out         = 8,
    border_size      = 1,

    col              = {
      active_border = colors.primary,
      inactive_border = colors.secondary,
    },

    resize_on_border = false,
    allow_tearing    = false,

    layout           = "dwindle",
  },

  decoration = {
    rounding           = 0,

    active_opacity     = 0.95,
    inactive_opacity   = 0.95,
    fullscreen_opacity = 1,

    shadow             = {
      enabled = false,
    },

    blur               = {
      enabled           = true,
      size              = 6,
      passes            = 2,
      ignore_opacity    = true,
      new_optimizations = true,
      xray              = true,
    },
  },

  animations = {
    enabled = true,
  },
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 3.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "fadeSwitch", enabled = false })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.88, bezier = "easeInOutCubic", style = "slidevert" })

hl.config({
  dwindle = {
    preserve_split = true,
    force_split = 2,
    special_scale_factor = 0.92
  },

  master = {
    new_status = "master",
  },

  scrolling = {
    column_width = 0.49,
  },

  binds = {
    hide_special_on_workspace_change = true,
  },

  misc = {
    disable_hyprland_logo    = true,
    disable_splash_rendering = true,
    force_default_wallpaper  = 0,
    middle_click_paste       = false,
    focus_on_activate        = true,
  },

  ecosystem = {
    no_update_news  = true,
    no_donation_nag = true,
  },
})

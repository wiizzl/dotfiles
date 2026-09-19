local colors = {
  rosewater = "rgb(f5e0dc)",
  rosewaterAlpha = "f5e0dc",

  flamingo = "rgb(f2cdcd)",
  flamingoAlpha = "f2cdcd",

  pink = "rgb(f5c2e7)",
  pinkAlpha = "f5c2e7",

  mauve = "rgb(cba6f7)",
  mauveAlpha = "cba6f7",

  red = "rgb(f38ba8)",
  redAlpha = "f38ba8",

  maroon = "rgb(eba0ac)",
  maroonAlpha = "eba0ac",

  peach = "rgb(fab387)",
  peachAlpha = "fab387",

  yellow = "rgb(f9e2af)",
  yellowAlpha = "f9e2af",

  green = "rgb(a6e3a1)",
  greenAlpha = "a6e3a1",

  teal = "rgb(94e2d5)",
  tealAlpha = "94e2d5",

  sky = "rgb(89dceb)",
  skyAlpha = "89dceb",

  sapphire = "rgb(74c7ec)",
  sapphireAlpha = "74c7ec",

  blue = "rgb(89b4fa)",
  blueAlpha = "89b4fa",

  lavender = "rgb(b4befe)",
  lavenderAlpha = "b4befe",

  text = "rgb(cdd6f4)",
  textAlpha = "cdd6f4",

  subtext1 = "rgb(bac2de)",
  subtext1Alpha = "bac2de",

  subtext0 = "rgb(a6adc8)",
  subtext0Alpha = "a6adc8",

  overlay2 = "rgb(9399b2)",
  overlay2Alpha = "9399b2",

  overlay1 = "rgb(7f849c)",
  overlay1Alpha = "7f849c",

  overlay0 = "rgb(6c7086)",
  overlay0Alpha = "6c7086",

  surface2 = "rgb(585b70)",
  surface2Alpha = "585b70",

  surface1 = "rgb(45475a)",
  surface1Alpha = "45475a",

  surface0 = "rgb(313244)",
  surface0Alpha = "313244",

  base = "rgb(1e1e2e)",
  baseAlpha = "1e1e2e",

  mantle = "rgb(181825)",
  mantleAlpha = "181825",

  crust = "rgb(11111b)",
  crustAlpha = "11111b",
}

hl.config({
  general = {
    gaps_in          = 3,
    gaps_out         = 8,
    border_size      = 1,

    col              = {
      active_border = colors.mauve,
      inactive_border = colors.surface1,
    },

    resize_on_border = false,
    allow_tearing    = false,

    layout           = "dwindle",
  },

  decoration = {
    rounding = 0,

    shadow   = {
      enabled = false,
    },

    blur     = {
      enabled = false,
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
hl.animation({ leaf = "workspaces", enabled = true, speed = 5.82, bezier = "almostLinear", style = "slidevert" })

hl.config({
  dwindle = {
    preserve_split = true,
    force_split = 2,
    special_scale_factor = 0.9
  },

  master = {
    new_status = "master",
  },

  scrolling = {
    column_width = 0.49,
  },

  cursor = {
    hide_on_key_press = true,
    warp_on_change_workspace = 1,
  },

  binds = {
    hide_special_on_workspace_change = true,
  },

  misc = {
    disable_hyprland_logo    = true,
    disable_splash_rendering = true,
    background_color         = colors.base,
    force_default_wallpaper  = 0,
    middle_click_paste       = false,
  },

  ecosystem = {
    no_update_news  = true,
    no_donation_nag = true,
  },
})

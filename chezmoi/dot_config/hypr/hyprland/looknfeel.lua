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
      active_border = {
        colors = { colors.mauve, colors.teal },
        angle = 45,
      },
      inactive_border = colors.surface1,
    },

    resize_on_border = false,
    allow_tearing    = false,
    layout           = "dwindle",
  },

  decoration = {
    rounding           = 0,
    rounding_power     = 2,

    active_opacity     = 0.85,
    fullscreen_opacity = 1,
    inactive_opacity   = 0.8,

    shadow             = {
      enabled      = true,
      range        = 32,
      render_power = 2,
      color        = "rgba(" .. colors.baseAlpha .. "99)",
    },

    blur               = {
      enabled           = true,
      size              = 3,
      passes            = 4,
      new_optimizations = true,
      ignore_opacity    = true,
      xray              = true
    },
  },

  animations = {
    enabled = true,
  },

  dwindle = {
    preserve_split = true,
    default_split_ratio = 1,
    force_split = 2,
    pseudotile = true,
    single_window_aspect_ratio = 0,
    smart_split = false,
    special_scale_factor = 0.9
  },

  master = {
    new_status = "master",
  },

  scrolling = {
    fullscreen_on_one_column = true,
  },

  misc = {
    background_color = colors.base,
  },
})

hl.curve("default", { type = "bezier", points = { { 0.12, 0.92 }, { 0.08, 1.0 } } })
hl.animation({ leaf = "global", enabled = true })
hl.animation({ leaf = "windows", enabled = true, speed = 6, bezier = "default", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 6, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 6, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "default", style = "slidevert" })

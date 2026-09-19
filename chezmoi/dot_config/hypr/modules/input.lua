hl.config({
  input = {
    kb_layout          = "fr",
    kb_variant         = "",
    kb_model           = "",
    kb_options         = "",
    kb_rules           = "",

    sensitivity        = 0,
    follow_mouse       = 1,

    repeat_delay       = 300,
    repeat_rate        = 40,

    numlock_by_default = true,

    touchpad           = {
      natural_scroll = true,
      scroll_factor  = 0.8,
    },

    accel_profile      = "flat",
  },

  misc = {
    key_press_enables_dpms = true,
    mouse_move_enables_dpms = true,
  },
})

hl.gesture({
  fingers = 3,
  direction = "vertical",
  action = "workspace"
})

hl.config({
  input = {
    kb_layout          = "fr",

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
})

hl.gesture({
  fingers = 3,
  direction = "vertical",
  action = "workspace"
})

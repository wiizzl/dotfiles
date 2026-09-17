hl.config({
  input = {
    follow_mouse = 1,
    kb_layout    = "fr",
    sensitivity  = 0,

    repeat_delay = 250,
    repeat_rate  = 35,

    touchpad     = {
      natural_scroll       = true,
      disable_while_typing = true,
      scroll_factor        = 0.8,
    },
  },

  binds = {
    scroll_event_delay = 0,
  },

  cursor = {
    hotspot_padding = 1,
  },
})

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace"
})

hl.config({
        input = {
                kb_layout = "us",
                numlock_by_default = true,

                follow_mouse = 1,

		repeat_delay = 250,
		repeat_rate = 35,

		off_window_axis_events = 2,

                touchpad = {
                        tap_to_click = true,
                        natural_scroll = true,
			disable_while_typing = true,
			clickfinger_behavior = true,
			scroll_factor = 0.7
                },
        },

        general = {
                gaps_workspaces = 50,

		no_focus_fallback = true,

		allow_tearing = true,

		snap = {
			enabled = true,
			window_gap = 4,
			monitor_gap = 5
		}
        },

        misc = {
                disable_hyprland_logo = true,
                disable_splash_rendering = true,

		vrr = 1,

		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,

		animate_manual_resizes = true,
		animate_mouse_windowdragging = true,

		enable_swallow = false,

		swallow_regex = "(ghostty|Ghostty|foot|allacritty|Alacritty)",

		focus_on_activate = true
        },

        dwindle = {
                preserve_split = true,
		smart_split = false,
		smart_resizing = false
        },

        master = {
                mfact = 0.5,
        },

	binds = {
		scroll_event_delay = 0,
		hide_special_on_workspace_change = true
	},

	cursor = {
		zoom_factor = 1,
		zoom_rigid = false,
		hotspot_padding = 1
	}
})

hl.device({
	name = "wacom-one-by-wacom-m-pen",
	output = "DP-1",
	left_handed = true,
})

-- Decoration

hl.config({

decoration = {
        active_opacity = 0.9,
        inactive_opacity = 0.85,

        shadow = {
                enabled = true,

                range = 50,
                render_power = 10,

		offset = "0 4",

                color = "rgba(00000027)",
        },

        blur = {
                enabled = true,
                xray = true,
                special = false,

		new_optimizations = true,

                size = 6,
                passes = 2,

		brightness = 0.6,
                contrast = 0.89,
                noise = 0.05,

		vibrancy = 0.12,
                vibrancy_darkness = 0.2,

                popups = false,
		popups_ignorealpha = 0.6,

                input_methods = true,
                input_methods_ignorealpha = 0.8,

		ignore_opacity = true,
        },

        dim_inactive = true,
	dim_strength = 0.05,
        dim_special = 0.07
}

})

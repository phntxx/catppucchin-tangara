-- SPDX-FileCopyrightText: 2025 phntxx <phntxx@users.noreply.github.com>
--
-- SPDX-License-Identifier: GPL-3.0-only

local lvgl = require("lvgl")
local font = require("font")

return {
	base = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(0),
			text_font = font.fusion_12,
		} },
	},
	root = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#1e1e2e",
			text_color = "#cdd6f4"
		} },
	},
	header = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#313244"
		} },
	},
	pop_up = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#313244",
			border_color = "#b4befe",
			border_width = 1,
			radius = 0, -- todo this is not working??
		} },
	},
	button = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			image_recolor_opa = 255, -- LV_OPA_COVER
			pad_left = 2,
			pad_right = 2,
			pad_top = 1,
			pad_bottom = 1,
			border_width = 1,
			bg_color = "#313244",
			border_color = "#6c7086",
			image_recolor = "#6c7086",
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			image_recolor_opa = 255, -- LV_OPA_COVER
			border_color = "#f5e0dc",
			image_recolor = "#f5e0dc",
			text_color = "#f5e0dc",
		} },
	},
	listbutton = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#cdd6f4",
			flex_cross_place = lvgl.FLEX_ALIGN.CENTER,
			pad_column = 4,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_opa = lvgl.OPA(20),
			bg_color = "#9399b2",
		} },
	},
	bar = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
		} },
	},
	slider = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#313244",
			border_color = "#1e1e2e",
			border_width = 1
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = "#b4befe",
			border_color = "#1e1e2e",
			border_width = 1,
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = "#6c7086",
			border_color = "#6c7086",
			border_width = 1,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f5e0dc",
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f5e0dc",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = "#cdd6f4",
			border_color = "#f5e0dc",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.EDITED, lvgl.Style {
			pad_all = 1,
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_color = "#b4befe",
		} },
	},
	scrubber = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#313244",
			border_color = "#1e1e2e",
			border_width = 1
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = "#b4befe",
			border_color = "#1e1e2e",
			border_width = 1,
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = "#6c7086",
			border_color = "#6c7086",
			border_width = 1,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f5e0dc",
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f5e0dc",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = "#cdd6f4",
			border_color = "#f5e0dc",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.EDITED, lvgl.Style {
			pad_all = 1,
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_color = "#b4befe",
		} },
	},
	switch = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			width = 22,
			height = 12,
			bg_color = "#1e1e2e",
			border_color = "#6c7086",
			border_width = 1,
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = "#1e1e2e",
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f5e0dc",
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#b4befe",
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = "#313244",
			border_color = "#6c7086",
			border_width = 1,
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = "#cdd6f4",
			border_color = "#f5e0dc",
		} },
	},

	dropdown = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 2,
			border_width = 1,
			border_color = "#6c7086",
			border_side = 15, -- LV_BORDER_SIDE_FULL
			bg_color = "#313244",
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#cdd6f4",
			bg_opa = lvgl.OPA(100),
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			bg_color = "#313244",
			border_color = "#f5e0dc",
			image_recolor = "#f5e0dc",
			text_color = "#f5e0dc"
		} },
	},
	dropdownlist = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 2,
			border_width = 1,
			border_color = "#b4befe",
			bg_opa = lvgl.OPA(100),
			bg_color = "#313244"
		} },
		{ lvgl.PART.SELECTED | lvgl.STATE.CHECKED, lvgl.Style {
			bg_opa = lvgl.OPA(20),
			bg_color = "#9399b2",
		} },
	},

	settings_title = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_top = 2,
			pad_bottom = 4,
			text_font = font.fusion_10,
			text_color = "#bac2de",
		} },
	},
	icon_disabled = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = "#6c7086"
		} },
	},
	icon_enabled = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = "#b4befe"
		} },
	},
	now_playing = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#313244",
			border_width = 1,
			border_color = "#6c7086",
			border_side = 15, -- LV_BORDER_SIDE_FULL
		} },
	},
	menu_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 4,
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#6c7086",
		} },
	},
	database_indicator = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#cdd6f4",
		} },
	},
	bluetooth_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#cdd6f4",
		} },
	},
	battery = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#cdd6f4"
		} },
	},
	battery_0 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#f38ba8",
		} },
	},
	battery_20 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#f38ba8",
		} },
	},
	battery_40 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#f9e2af",
		} },
	},
	battery_60 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#cdd6f4",
		} },
	},
	battery_80 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#cdd6f4",
		} },
	},
	battery_100 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#a6e3a1",
		} },
	},
	battery_charging = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#cdd6f4",
		} },
	},
	battery_charge_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#89b4fa",
		} },
	},
	battery_charge_outline = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#6c7086",
		} },
	},
	regulatory_icons = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = "#cdd6f4",
		} },
	},
}
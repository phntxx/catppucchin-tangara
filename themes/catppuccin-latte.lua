-- SPDX-FileCopyrightText: 2025 Catppuccin Org <releases@catppuccin.com>
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
			bg_color = "#eff1f5",
			text_color = "#4c4f69"
		} },
	},
	header = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#ccd0da"
		} },
	},
	pop_up = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#ccd0da",
			border_color = "#7287fd",
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
			bg_color = "#e6e9ef",
			border_color = "#9ca0b0",
			image_recolor = "#9ca0b0",
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			image_recolor_opa = 255, -- LV_OPA_COVER
			border_color = "#dc8a78",
			image_recolor = "#dc8a78",
			text_color = "#dc8a78",
		} },
	},
	listbutton = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#4c4f69",
			flex_cross_place = lvgl.FLEX_ALIGN.CENTER,
			pad_column = 4,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_opa = lvgl.OPA(20),
			bg_color = "#7c7f93",
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
			bg_color = "#ccd0da",
			border_color = "#eff1f5",
			border_width = 1
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = "#7287fd",
			border_color = "#eff1f5",
			border_width = 1,
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = "#9ca0b0",
			border_color = "#9ca0b0",
			border_width = 1,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#dc8a78",
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#dc8a78",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = "#4c4f69",
			border_color = "#dc8a78",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.EDITED, lvgl.Style {
			pad_all = 1,
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_color = "#7287fd",
		} },
	},
	scrubber = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#ccd0da",
			border_color = "#eff1f5",
			border_width = 1
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = "#7287fd",
			border_color = "#eff1f5",
			border_width = 1,
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = "#9ca0b0",
			border_color = "#9ca0b0",
			border_width = 1,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#dc8a78",
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#dc8a78",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = "#4c4f69",
			border_color = "#dc8a78",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.EDITED, lvgl.Style {
			pad_all = 1,
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_color = "#7287fd",
		} },
	},
	switch = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			width = 22,
			height = 12,
			bg_color = "#eff1f5",
			border_color = "#9ca0b0",
			border_width = 1,
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = "#eff1f5",
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#dc8a78",
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#7287fd",
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = "#ccd0da",
			border_color = "#9ca0b0",
			border_width = 1,
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = "#4c4f69",
			border_color = "#dc8a78",
		} },
	},

	dropdown = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 2,
			border_width = 1,
			border_color = "#9ca0b0",
			border_side = 15, -- LV_BORDER_SIDE_FULL
			bg_color = "#e6e9ef",
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#4c4f69",
			bg_opa = lvgl.OPA(100),
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			bg_color = "#e6e9ef",
			border_color = "#dc8a78",
			image_recolor = "#dc8a78",
			text_color = "#dc8a78"
		} },
	},
	dropdownlist = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 2,
			border_width = 1,
			border_color = "#7287fd",
			bg_opa = lvgl.OPA(100),
			bg_color = "#ccd0da"
		} },
		{ lvgl.PART.SELECTED | lvgl.STATE.CHECKED, lvgl.Style {
			bg_opa = lvgl.OPA(20),
			bg_color = "#7c7f93",
		} },
	},

	settings_title = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_top = 2,
			pad_bottom = 4,
			text_font = font.fusion_10,
			text_color = "#5c5f77",
		} },
	},
	icon_disabled = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = "#9ca0b0"
		} },
	},
	icon_enabled = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = "#7287fd"
		} },
	},
	now_playing = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#e6e9ef",
			border_width = 1,
			border_color = "#9ca0b0",
			border_side = 15, -- LV_BORDER_SIDE_FULL
		} },
	},
	menu_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 4,
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#9ca0b0",
		} },
	},
	database_indicator = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#4c4f69",
		} },
	},
	bluetooth_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#4c4f69",
		} },
	},
	battery = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#4c4f69"
		} },
	},
	battery_0 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#d20f39",
		} },
	},
	battery_20 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#d20f39",
		} },
	},
	battery_40 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#df8e1d",
		} },
	},
	battery_60 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#4c4f69",
		} },
	},
	battery_80 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#4c4f69",
		} },
	},
	battery_100 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#40a02b",
		} },
	},
	battery_charging = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#4c4f69",
		} },
	},
	battery_charge_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#1e66f5",
		} },
	},
	battery_charge_outline = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#9ca0b0",
		} },
	},
	regulatory_icons = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = "#4c4f69",
		} },
	},
}
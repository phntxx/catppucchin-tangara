-- SPDX-FileCopyrightText: 2025 phntxx <phntxx@users.noreply.github.com>
--
-- SPDX-License-Identifier: GPL-3.0-only

local lvgl = require("lvgl")
local font = require("font")

-- see https://github.com/catppuccin/catppuccin/blob/main/docs/style-guide.md
local colors = {
	background = "#1e1e2e",
	secondary = "#11111b", -- using crust
	surface = "#313244", -- using surface 0
	overlay = "#6c7086", -- using overlay 0
	body = "#cdd6f4",
	main_headline = "#cdd6f4",
	sub_headline = "#bac2de", -- using subtext 1
	subtle = "#7f849c",
	links = "#89b4fa",
	success = "#a6e3a1",
	warning = "#f9e2af",
	error = "#f38ba8",
	tag = "#89b4fa",
	selection_background = "#9399b2",
	cursor = "#f5e0dc",
	active = "#b4befe",
	inactive = "#6c7086"
}

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
			bg_color = colors["background"],
			text_color = colors["body"]
		} },
	},
	header = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = colors["surface"]
		} },
	},
	pop_up = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = colors["surface"],
			border_color = colors["active"],
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
			bg_color = colors["surface"],
			border_color = colors["inactive"],
			image_recolor = colors["inactive"],
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			image_recolor_opa = 255, -- LV_OPA_COVER
			border_color = colors["cursor"],
			image_recolor = colors["cursor"],
			text_color = colors["cursor"],
		} },
	},
	listbutton = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["body"],
			flex_cross_place = lvgl.FLEX_ALIGN.CENTER,
			pad_column = 4,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_opa = lvgl.OPA(20),
			bg_color = colors["selection_background"],
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
			bg_color = colors["surface"],
			border_color = colors["background"],
			border_width = 1
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = colors["active"],
			border_color = colors["background"],
			border_width = 1,
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = colors["overlay"],
			border_color = colors["overlay"],
			border_width = 1,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = colors["cursor"],
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = colors["cursor"],
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = colors["body"],
			border_color = colors["cursor"],
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.EDITED, lvgl.Style {
			pad_all = 1,
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_color = colors["active"],
		} },
	},
	scrubber = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = colors["surface"],
			border_color = colors["background"],
			border_width = 1
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = colors["active"],
			border_color = colors["background"],
			border_width = 1,
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = colors["overlay"],
			border_color = colors["overlay"],
			border_width = 1,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = colors["cursor"],
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = colors["cursor"],
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = colors["body"],
			border_color = colors["cursor"],
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.EDITED, lvgl.Style {
			pad_all = 1,
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_color = colors["active"],
		} },
	},
	switch = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			width = 22,
			height = 12,
			bg_color = colors["background"],
			border_color = colors["inactive"],
			border_width = 1,
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = colors["background"],
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = colors["cursor"],
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = colors["active"],
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = colors["surface"],
			border_color = colors["inactive"],
			border_width = 1,
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = colors["body"],
			border_color = colors["cursor"],
		} },
	},

	dropdown = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 2,
			border_width = 1,
			border_color = colors["inactive"],
			border_side = 15, -- LV_BORDER_SIDE_FULL
			bg_color = colors["surface"],
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["body"],
			bg_opa = lvgl.OPA(100),
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			bg_color = colors["surface"],
			border_color = colors["cursor"],
			image_recolor = colors["cursor"],
			text_color = colors["cursor"]
		} },
	},
	dropdownlist = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 2,
			border_width = 1,
			border_color = colors["active"],
			bg_opa = lvgl.OPA(100),
			bg_color = colors["surface"]
		} },
		{ lvgl.PART.SELECTED | lvgl.STATE.CHECKED, lvgl.Style {
			bg_opa = lvgl.OPA(20),
			bg_color = colors["selection_background"],
		} },
	},

	settings_title = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_top = 2,
			pad_bottom = 4,
			text_font = font.fusion_10,
			text_color = colors["sub_headline"],
		} },
	},
	icon_disabled = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = colors["inactive"]
		} },
	},
	icon_enabled = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = colors["active"]
		} },
	},
	now_playing = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = colors["surface"],
			border_width = 1,
			border_color = colors["inactive"],
			border_side = 15, -- LV_BORDER_SIDE_FULL
		} },
	},
	menu_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 4,
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["inactive"],
		} },
	},
	database_indicator = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["body"],
		} },
	},
	bluetooth_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["body"],
		} },
	},
	battery = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["body"]
		} },
	},
	battery_0 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["error"],
		} },
	},
	battery_20 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["error"],
		} },
	},
	battery_40 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["warning"],
		} },
	},
	battery_60 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["body"],
		} },
	},
	battery_80 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["body"],
		} },
	},
	battery_100 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["success"],
		} },
	},
	battery_charging = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["body"],
		} },
	},
	battery_charge_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["tag"],
		} },
	},
	battery_charge_outline = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = colors["overlay"],
		} },
	},
	regulatory_icons = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = colors["body"],
		} },
	},
}

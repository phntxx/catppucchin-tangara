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
			bg_color = "#303446",
			text_color = "#c6d0f5"
		} },
	},
	header = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#414559"
		} },
	},
	pop_up = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#414559",
			border_color = "#babbf1",
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
			bg_color = "#414559",
			border_color = "#737994",
			image_recolor = "#737994",
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			image_recolor_opa = 255, -- LV_OPA_COVER
			border_color = "#f2d5cf",
			image_recolor = "#f2d5cf",
			text_color = "#f2d5cf",
		} },
	},
	listbutton = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#c6d0f5",
			flex_cross_place = lvgl.FLEX_ALIGN.CENTER,
			pad_column = 4,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_opa = lvgl.OPA(20),
			bg_color = "#949cbb",
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
			bg_color = "#414559",
			border_color = "#303446",
			border_width = 1
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = "#babbf1",
			border_color = "#303446",
			border_width = 1,
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = "#737994",
			border_color = "#737994",
			border_width = 1,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f2d5cf",
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f2d5cf",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = "#c6d0f5",
			border_color = "#f2d5cf",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.EDITED, lvgl.Style {
			pad_all = 1,
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_color = "#babbf1",
		} },
	},
	scrubber = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#414559",
			border_color = "#303446",
			border_width = 1
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = "#babbf1",
			border_color = "#303446",
			border_width = 1,
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = "#737994",
			border_color = "#737994",
			border_width = 1,
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f2d5cf",
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f2d5cf",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = "#c6d0f5",
			border_color = "#f2d5cf",
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.EDITED, lvgl.Style {
			pad_all = 1,
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_color = "#babbf1",
		} },
	},
	switch = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			width = 22,
			height = 12,
			bg_color = "#303446",
			border_color = "#737994",
			border_width = 1,
		} },
		{ lvgl.PART.INDICATOR, lvgl.Style {
			bg_color = "#303446",
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			border_color = "#f2d5cf",
		} },
		{ lvgl.PART.INDICATOR | lvgl.STATE.CHECKED, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#babbf1",
		} },
		{ lvgl.PART.KNOB, lvgl.Style {
			bg_color = "#414559",
			border_color = "#737994",
			border_width = 1,
		} },
		{ lvgl.PART.KNOB | lvgl.STATE.FOCUSED, lvgl.Style {
			bg_color = "#c6d0f5",
			border_color = "#f2d5cf",
		} },
	},

	dropdown = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 2,
			border_width = 1,
			border_color = "#737994",
			border_side = 15, -- LV_BORDER_SIDE_FULL
			bg_color = "#414559",
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#c6d0f5",
			bg_opa = lvgl.OPA(100),
		} },
		{ lvgl.PART.MAIN | lvgl.STATE.FOCUSED, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			bg_color = "#414559",
			border_color = "#f2d5cf",
			image_recolor = "#f2d5cf",
			text_color = "#f2d5cf"
		} },
	},
	dropdownlist = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 2,
			border_width = 1,
			border_color = "#babbf1",
			bg_opa = lvgl.OPA(100),
			bg_color = "#414559"
		} },
		{ lvgl.PART.SELECTED | lvgl.STATE.CHECKED, lvgl.Style {
			bg_opa = lvgl.OPA(20),
			bg_color = "#949cbb",
		} },
	},

	settings_title = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_top = 2,
			pad_bottom = 4,
			text_font = font.fusion_10,
			text_color = "#b5bfe2",
		} },
	},
	icon_disabled = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = "#737994"
		} },
	},
	icon_enabled = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = "#babbf1"
		} },
	},
	now_playing = {
		{ lvgl.PART.MAIN, lvgl.Style {
			bg_opa = lvgl.OPA(100),
			bg_color = "#414559",
			border_width = 1,
			border_color = "#737994",
			border_side = 15, -- LV_BORDER_SIDE_FULL
		} },
	},
	menu_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			pad_all = 4,
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#737994",
		} },
	},
	database_indicator = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#c6d0f5",
		} },
	},
	bluetooth_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#c6d0f5",
		} },
	},
	battery = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#c6d0f5"
		} },
	},
	battery_0 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#e78284",
		} },
	},
	battery_20 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#e78284",
		} },
	},
	battery_40 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#e5c890",
		} },
	},
	battery_60 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#c6d0f5",
		} },
	},
	battery_80 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#c6d0f5",
		} },
	},
	battery_100 = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#a6d189",
		} },
	},
	battery_charging = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#c6d0f5",
		} },
	},
	battery_charge_icon = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#8caaee",
		} },
	},
	battery_charge_outline = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor_opa = 255, -- LV_OPA_COVER
			image_recolor = "#737994",
		} },
	},
	regulatory_icons = {
		{ lvgl.PART.MAIN, lvgl.Style {
			image_recolor = "#c6d0f5",
		} },
	},
}
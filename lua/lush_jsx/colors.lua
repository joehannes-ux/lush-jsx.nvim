local hsl = require("lush.hsl")

-- lush_jsx palette
return {
	dark0_hard = hsl("#111111"),
	dark0 = hsl("#182227"),
	dark0_soft = hsl("#252c31"),
	dark1 = hsl("#2a343a"),
	dark2 = hsl("#2e373b"),
	dark3 = hsl("#3f4b52"),
	dark4 = hsl("#555e61"),
	light0_hard = hsl("#f0f0f0"),
	light0 = hsl("#fbfbfb"),
	light0_soft = hsl("#fefefe"),
	light1 = hsl("#ebebeb"),
	light2 = hsl("#d5d5d5"),
	light3 = hsl("#bdbdbd"),
	light4 = hsl("#a8a8a8"),
	darkbg_red = hsl("#ec5f67").saturate(33).lighten(33),
	darkbg_green = hsl("#afd700").saturate(33).lighten(33),
	darkbg_yellow = hsl("#eead0e").saturate(33).lighten(33),
	darkbg_blue = hsl("#7ec0ee").saturate(33).lighten(33),
	darkbg_purple = hsl("#d3d3e7").saturate(33).lighten(33),
	darkbg_aqua = hsl("#00FFFF").saturate(33).lighten(33),
	darkbg_orange = hsl("#FF8800").saturate(33).lighten(33),
	darkbg_magenta = hsl("#d16d9e").saturate(33).lighten(33),
	neutral_red = hsl("#ec5f67"),
	neutral_green = hsl("#afd700"),
	neutral_yellow = hsl("#eead0e"),
	neutral_blue = hsl("#7ec0ee"),
	neutral_purple = hsl("#d3d3e7"),
	neutral_aqua = hsl("#00FFFF"),
	neutral_orange = hsl("#FF8800"),
	neutral_magenta = hsl("#d16d9e"),
	error = hsl("#e0211d"),
	lightbg_red = hsl("#ec5f67").saturate(62).darken(33),
	lightbg_green = hsl("#afd700").saturate(62).darken(33),
	lightbg_yellow = hsl("#eead0e").saturate(62).darken(33),
	lightbg_blue = hsl("#7ec0ee").saturate(62).darken(33),
	lightbg_purple = hsl("#d3d3e7").saturate(62).darken(33),
	lightbg_aqua = hsl("#00FFFF").saturate(62).darken(33),
	lightbg_orange = hsl("#FF8800").saturate(62).darken(33),
	lightbg_magenta = hsl("#d16d9e").saturate(33).lighten(33),
	gray = hsl("#9a9a9a"),
}

local hsl = require("lush.hsl")

local lightbg_red = hsl("#FF0000")
local lightbg_green = hsl("#00FF80")
local lightbg_yellow = hsl("#FFFF00")
local lightbg_blue = hsl("#0000FF")
local lightbg_purple = hsl("#8000FF")
local lightbg_aqua = hsl("#00FFFF")
local lightbg_orange = hsl("#FF7F00")
local lightbg_magenta = hsl("#FF0080")
local dark = hsl("#100710")
local light = hsl("#F0FFFD")

-- lush_jsx palette
local colors = {
  light0_hard = light.saturate(21),
  light0 = light,
  light0_soft = light.desaturate(21),
  light1 = light.darken(5),
  light2 = light.darken(9),
  light3 = light.darken(15),
  light4 = light.darken(21),
  dark0_hard = dark.saturate(21),
  dark0 = dark,
  dark0_soft = dark.desaturate(21),
  dark1 = dark.lighten(5),
  dark2 = dark.lighten(9),
  dark3 = dark.lighten(15),
  dark4 = dark.lighten(21),
  lightbg_red = lightbg_red,
  lightbg_green = lightbg_green,
  lightbg_yellow = lightbg_yellow,
  lightbg_blue = lightbg_blue,
  lightbg_purple = lightbg_purple,
  lightbg_aqua = lightbg_aqua,
  lightbg_orange = lightbg_orange,
  lightbg_magenta = lightbg_magenta,
  neutral_red = lightbg_red.darken(10),
  neutral_green = lightbg_green.darken(10),
  neutral_yellow = lightbg_yellow.darken(10),
  neutral_blue = lightbg_blue.darken(10),
  neutral_purple = lightbg_purple.darken(10),
  neutral_aqua = lightbg_aqua.darken(10),
  neutral_orange = lightbg_orange.darken(10),
  neutral_magenta = lightbg_magenta.darken(10),
  darkbg_red = lightbg_red.darken(21),
  darkbg_green = lightbg_green.darken(21),
  darkbg_yellow = lightbg_yellow.darken(21),
  darkbg_blue = lightbg_blue.darken(21),
  darkbg_purple = lightbg_purple.darken(21),
  darkbg_aqua = lightbg_aqua.darken(21),
  darkbg_orange = lightbg_orange.darken(21),
  darkbg_magenta = lightbg_magenta.darken(21),
  error = hsl("#ff0000"),
  gray = hsl("#9a9a9a"),
  white = hsl("#FFFFFF"),
  black = hsl("#000000"),
}

table.insert(colors, {
  red = colors.neutral_red,
  green = colors.neutral_green,
  yellow = colors.neutral_yellow,
  blue = colors.neutral_blue,
  purple = colors.neutral_purple,
  aqua = colors.neutral_aqua,
  orange = colors.neutral_orange,
  magenta = colors.neutral.magenta,
})

return colors

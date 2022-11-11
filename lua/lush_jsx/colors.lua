local hsl = require("lush.hsl")

local function table_merge(t1, t2)
  for key, value in pairs(t2) do
    t1[key] = value
  end

  return t1
end

local red = hsl("#FF0000")
local green = hsl("#00FF80")
local yellow = hsl("#FFFF00")
local blue = hsl("#0000FF")
local purple = hsl("#8000FF")
local aqua = hsl("#00FFFF")
local orange = hsl("#FF7F00")
local magenta = hsl("#FF0080")
local dark = purple.darken(99)
local light = green.lighten(99)
local white = hsl("#FAFFFD")
local gray = hsl("#9A9A9A")
local black = hsl("#370021")

-- lush_jsx palette
local colors = {
  light0_hard = light.desaturate(21),
  light0 = light,
  light0_medium = light,
  light0_soft = light.saturate(10),
  light1 = light.darken(5),
  light2 = light.darken(9),
  light3 = light.darken(15),
  light4 = light.darken(21),
  dark0_hard = dark.desaturate(21),
  dark0 = dark,
  dark0_medium = dark,
  dark0_soft = dark.saturate(10),
  dark1 = dark.lighten(5),
  dark2 = dark.lighten(9),
  dark3 = dark.lighten(15),
  dark4 = dark.lighten(21),
  darkbg_red = red,
  darkbg_green = green,
  darkbg_yellow = yellow,
  darkbg_blue = blue,
  darkbg_purple = purple,
  darkbg_aqua = aqua,
  darkbg_orange = orange,
  darkbg_magenta = magenta,
  neutral_red = red.darken(10),
  neutral_green = green.darken(10),
  neutral_yellow = yellow.darken(10),
  neutral_blue = blue.darken(10),
  neutral_purple = purple.darken(10),
  neutral_aqua = aqua.darken(10),
  neutral_orange = orange.darken(10),
  neutral_magenta = magenta.darken(10),
  lightbg_red = red.darken(21),
  lightbg_green = green.darken(21),
  lightbg_yellow = yellow.darken(21),
  lightbg_blue = blue.darken(21),
  lightbg_purple = purple.darken(21),
  lightbg_aqua = aqua.darken(21),
  lightbg_orange = orange.darken(21),
  lightbg_magenta = magenta.darken(21),
  error = red,
  gray = gray,
  white = white,
  black = black,
}

return table_merge(colors, {
  red = colors.neutral_red,
  green = colors.neutral_green,
  yellow = colors.neutral_yellow,
  blue = colors.neutral_blue,
  purple = colors.neutral_purple,
  aqua = colors.neutral_aqua,
  orange = colors.neutral_orange,
  magenta = colors.neutral_magenta,
})

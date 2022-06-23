-- fzf highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    -- fzf.vim
    Fzf1 { fg = base.LushJSXBlue.fg, bg = base.LushJSXBg1.fg },
    Fzf2 { fg = base.LushJSXOrange.fg, bg = base.LushJSXBg1.fg },
    Fzf3 { fg = base.LushJSXFg4.fg, bg = base.LushJSXBg1.fg },
    ShowMarksHLl { base.LushJSXBlueSign },
    ShowMarksHLu { base.LushJSXBlueSign },
    ShowMarksHLo { base.LushJSXBlueSign },
    ShowMarksHLm { base.LushJSXBlueSign },
  }
end)

return M

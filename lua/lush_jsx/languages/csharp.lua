-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    csBraces {base.LushJSXFg1},
    csEndColon {base.LushJSXFg1},
    csLogicSymbols {base.LushJSXFg1},
    csParens {base.LushJSXFg3},
    csOpSymbols {base.LushJSXFg3},
    csInterpolationDelimiter {base.LushJSXFg3},
    csInterpolationAlignDel {base.LushJSXAquaBold},
    csInterpolationFormat {base.LushJSXAqua},
    csInterpolationFormatDel {base.LushJSXAquaBold},
  }
end)

return M

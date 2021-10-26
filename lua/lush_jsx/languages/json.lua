-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    jsonKeyword {base.LushJSXGreen},
    jsonQuote {base.LushJSXGreen},
    jsonBraces {base.LushJSXFg1},
    jsonString {base.LushJSXFg1},
  }
end)

return M

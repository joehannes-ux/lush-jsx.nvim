---@diagnostic disable: undefined-global
-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    jsonKeyword { base.LushJSXMagentaBold },
    jsonQuote { base.LushJSXFg0 },
    jsonBraces { base.LushJSXFg1 },
    jsonString { fg = base.LushJSXGreen.fg, bg = base.LushJSXBg4.fg },
  }
end)

return M

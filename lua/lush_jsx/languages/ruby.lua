-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    rubyStringDelimiter {base.LushJSXGreen},
    rubyInterpolationDelimiter {base.LushJSXAqua},
  }
end)

return M

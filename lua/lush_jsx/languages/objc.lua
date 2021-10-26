-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {objcTypeModifier {base.LushJSXRed}, objcDirective {base.LushJSXBlue}}
end)

return M

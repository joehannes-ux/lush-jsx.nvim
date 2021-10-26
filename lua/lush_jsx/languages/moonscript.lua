-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    moonSpecialOp {base.LushJSXFg3},
    moonExtendedOp {base.LushJSXFg3},
    moonFunction {base.LushJSXFg3},
    moonObject {base.LushJSXYellow},
  }
end)

return M

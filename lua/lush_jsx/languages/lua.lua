-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    luaIn {base.LushJSXRed},
    luaFunction {base.LushJSXAqua},
    luaTable {base.LushJSXOrange},
  }
end)

return M

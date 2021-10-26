-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    cOperator {base.LushJSXPurple},
    cppOperator {base.LushJSXPurple},
    cStructure {base.LushJSXOrange},

  }
end)

return M

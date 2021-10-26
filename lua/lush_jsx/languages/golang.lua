-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

-- golang
M = lush(function()
  return {
    goDirective {base.LushJSXAqua},
    goConstants {base.LushJSXPurple},
    goDeclaration {base.LushJSXRed},
    goDeclType {base.LushJSXBlue},
    goBuiltins {base.LushJSXOrange},
  }
end)

return M

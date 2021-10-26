-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    ocamlOperator {base.LushJSXFg1},
    ocamlKeyChar {base.LushJSXOrange},
    ocamlArrow {base.LushJSXOrange},
    ocamlInfixOpKeyword {base.LushJSXRed},
    ocamlConstructor {base.LushJSXOrange},
  }
end)

return M

-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    coffeeExtendedOp {base.LushJSXFg3},
    coffeeSpecialOp {base.LushJSXFg3},
    coffeeCurly {base.LushJSXOrange},
    coffeeParen {base.LushJSXFg3},
    coffeeBracket {base.LushJSXOrange},
  }
end)

return M

-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    vimNotation {base.LushJSXOrange},
    vimBracket {base.LushJSXOrange},
    vimMapModKey {base.LushJSXOrange},
    vimFuncSID {base.LushJSXFg3},
    vimSetSep {base.LushJSXFg3},
    vimSep {base.LushJSXFg3},
    vimContinue {base.LushJSXFg3},
  }
end)

return M

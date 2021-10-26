-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    rustSigil {base.LushJSXOrange},
    rustEscape {base.LushJSXAqua},
    rustStringContinuation {base.LushJSXAqua},
    rustEnum {base.LushJSXAqua},
    rustStructure {base.LushJSXAqua},
    rustModPathSep {base.LushJSXFg2},
    rustCommentLineDoc {base.Comment},
    rustDefault {base.LushJSXAqua},
  }
end)

return M

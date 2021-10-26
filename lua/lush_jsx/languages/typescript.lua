-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    typescriptReserved {base.LushJSXAqua},
    typescriptLabel {base.LushJSXAqua},
    typescriptFuncKeyword {base.LushJSXAqua},
    typescriptIdentifier {base.LushJSXOrange},
    typescriptBraces {base.LushJSXOrange},
    typescriptEndColons {base.LushJSXFg1},
    typescriptDOMObjects {base.LushJSXFg1},
    typescriptAjaxMethods {base.LushJSXFg1},
    typescriptLogicSymbols {base.LushJSXOrange},
    typescriptDocSeeTag {base.Comment},
    typescriptDocParam {base.Comment},
    typescriptDocTags {base.Comment},
    typescriptGlobalObjects {base.LushJSXFg1},
    typescriptParens {base.LushJSXOrange},
    typescriptOpSymbols {base.LushJSXOrange},
    typescriptHtmlElemProperties {base.LushJSXFg1},
    typescriptNull {base.LushJSXPurple},
    typescriptInterpolationDelimiter {base.LushJSXAqua},
    typescriptArrowFunc {base.LushJSXFg1},
    typescriptCharacter {base.LushJSXOrange},
    typescriptUnion {base.LushJSXOrange},
    typescriptDotNotation {base.LushJSXOrange},
    typescriptGlobalObjectDot {typescriptDotNotation},
  }
end)

return M

-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    scalaNameDefinition {base.LushJSXFg1},
    scalaCaseFollowing {base.LushJSXFg1},
    scalaCapitalWord {base.LushJSXFg1},
    scalaTypeExtension {base.LushJSXFg1},
    scalaKeyword {base.LushJSXRed},
    scalaKeywordModifier {base.LushJSXRed},
    scalaSpecial {base.LushJSXAqua},
    scalaOperator {base.LushJSXFg1},
    scalaTypeDeclaration {base.LushJSXYellow},
    scalaTypeTypePostDeclaration {base.LushJSXYellow},
    scalaInstanceDeclaration {base.LushJSXFg1},
    scalaInterpolation {base.LushJSXAqua},
  }
end)

return M

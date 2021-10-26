-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    haskellType {base.LushJSXBlue},
    haskellIdentifier {base.LushJSXAqua},
    haskellSeparator {base.LushJSXFg4},
    haskellDelimiter {base.LushJSXOrange},
    haskellOperators {base.LushJSXPurple},
    haskellBacktick {base.LushJSXOrange},
    haskellStatement {base.LushJSXPurple},
    haskellConditional {base.LushJSXPurple},
    haskellLet {base.LushJSXRed},
    haskellDefault {base.LushJSXRed},
    haskellWhere {base.LushJSXRed},
    haskellBottom {base.LushJSXRedBold},
    haskellImportKeywords {base.LushJSXPurpleBold},
    haskellDeclKeyword {base.LushJSXOrange},
    haskellDecl {base.LushJSXOrange},
    haskellDeriving {base.LushJSXPurple},
    haskellAssocType {base.LushJSXAqua},
    haskellNumber {base.LushJSXAqua},
    haskellPragma {base.LushJSXRedBold},
    haskellTH {base.LushJSXAquaBold},
    haskellForeignKeywords {base.LushJSXGreen},
    haskellKeyword {base.LushJSXRed},
    haskellFloat {base.LushJSXAqua},
    haskellInfix {base.LushJSXPurple},
    haskellQuote {base.LushJSXGreenBold},
    haskellShebang {base.LushJSXYellowBold},
    haskellLiquid {base.LushJSXPurpleBold},
    haskellQuasiQuoted {base.LushJSXBlueBold},
    haskellRecursiveDo {base.LushJSXPurple},
    haskellQuotedType {base.LushJSXRed},
    haskellPreProc {base.LushJSXFg4},
    haskellTypeRoles {base.LushJSXRedBold},
    haskellTypeForall {base.LushJSXRed},
    haskellPatternKeyword {base.LushJSXBlue},
  }
end)

return M

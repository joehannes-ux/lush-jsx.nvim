-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    purescriptModuleKeyword {base.LushJSXAqua},
    purescriptModuleName {base.LushJSXFg1},
    purescriptWhere {base.LushJSXAqua},
    purescriptDelimiter {base.LushJSXFg4},
    purescriptType {base.LushJSXFg1},
    purescriptImportKeyword {base.LushJSXAqua},
    purescriptHidingKeyword {base.LushJSXAqua},
    purescriptAsKeyword {base.LushJSXAqua},
    purescriptStructure {base.LushJSXAqua},
    purescriptOperator {base.LushJSXBlue},
    purescriptTypeVar {base.LushJSXFg1},
    purescriptConstructor {base.LushJSXFg1},
    purescriptFunction {base.LushJSXFg1},
    purescriptConditional {base.LushJSXOrange},
    purescriptBacktick {base.LushJSXOrange},
  }
end)

return M

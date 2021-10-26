-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

-- python
M = lush(function()
  return {
    pythonBuiltin {base.LushJSXOrange},
    pythonBuiltinObj {base.LushJSXOrange},
    pythonBuiltinFunc {base.LushJSXOrange},
    pythonFunction {base.LushJSXAqua},
    pythonDecorator {base.LushJSXRed},
    pythonInclude {base.LushJSXBlue},
    pythonImport {base.LushJSXBlue},
    pythonRun {base.LushJSXBlue},
    pythonCoding {base.LushJSXBlue},
    pythonOperator {base.LushJSXRed},
    pythonException {base.LushJSXRed},
    pythonExceptions {base.LushJSXPurple},
    pythonBoolean {base.LushJSXPurple},
    pythonDot {base.LushJSXFg3},
    pythonConditional {base.LushJSXRed},
    pythonRepeat {base.LushJSXRed},
    pythonDottedName {base.LushJSXGreenBold},
  }
end)

return M

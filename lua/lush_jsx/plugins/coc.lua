-- coc highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
    -- coc.nvim
    CocErrorSign {base.LushJSXRedSign},
    CocWarningSign {base.LushJSXOrangeSign},
    CocInfoSign {base.LushJSXBlueSign},
    CocHintSign {base.LushJSXAquaSign},
    CocErrorFloat {base.LushJSXRed},
    CocWarningFloat {base.LushJSXOrange},
    CocInfoFloat {base.LushJSXBlue},
    CocHintFloat {base.LushJSXAqua},
    CocDiagnosticsError {base.LushJSXRed},
    CocDiagnosticsWarning {base.LushJSXOrange},
    CocDiagnosticsInfo {base.LushJSXBlue},
    CocDiagnosticsHint {base.LushJSXAqua},
    CocSelectedText {base.LushJSXRed},
    CocCodeLens {base.LushJSXGray},
    CocErrorHighlight {base.LushJSXRedUnderline},
    CocWarningHighlight {base.LushJSXOrangeUnderline},
    CocInfoHighlight {base.LushJSXBlueUnderline},
    CocHintHighlight {base.LushJSXAquaUnderline},
	}
end)

return M

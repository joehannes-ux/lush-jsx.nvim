-- syntastic highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
    -- syntastic
    SyntasticError {base.LushJSXRedUnderline},
    SyntasticWarning {base.LushJSXYellowUnderline},
    SyntasticErrorSign {base.LushJSXRedSign},
    SyntasticWarningSign {base.LushJSXYellowSign},
	}
end)

return M

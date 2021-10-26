-- signify highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
    -- vim-signify
    SignifySignAdd {base.LushJSXGreenSign},
    SignifySignChange {base.LushJSXAquaSign},
    SignifySignDelete {base.LushJSXRedSign},
	}
end)

return M

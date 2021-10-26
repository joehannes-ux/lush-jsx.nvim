-- gitgutter highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
    -- git-gutter
    GitGutterAdd {base.LushJSXGreenSign},
    GitGutterChange {base.LushJSXAquaSign},
    GitGutterDelete {base.LushJSXRedSign},
    GitGutterChangeDelete {base.LushJSXAquaSign},
	}
end)

return M

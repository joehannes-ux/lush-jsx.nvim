-- nvim-cmp highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
    -- nvim-cmp
    CmpItemKind {base.LushJSXYellow},
    CmpItemAbbrMatch {base.LushJSXFg1},
    CmpItemAbbr {base.LushJSXFg4},
    CmpItemMenu {base.LushJSXAqua}
	}
end)

return M

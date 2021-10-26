-- fzf highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
    -- fzf.vim
    Fzf1 {fg = base.LushJSXBlue.fg.hex, bg = base.LushJSXBg1.fg.hex},
    Fzf2 {fg = base.LushJSXOrange.fg.hex, bg = base.LushJSXBg1.fg.hex},
    Fzf3 {fg = base.LushJSXFg4.fg.hex, bg = base.LushJSXBg1.fg.hex},
    ShowMarksHLl {base.LushJSXBlueSign},
    ShowMarksHLu {base.LushJSXBlueSign},
    ShowMarksHLo {base.LushJSXBlueSign},
    ShowMarksHLm {base.LushJSXBlueSign},
	}
end)

return M

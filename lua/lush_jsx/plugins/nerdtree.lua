-- nerdtree highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
    -- nerdtree
    NERDTreeDir {base.LushJSXAqua},
    NERDTreeDirSlash {base.LushJSXAqua},
    NERDTreeOpenable {base.LushJSXOrange},
    NERDTreeClosable {base.LushJSXOrange},
    NERDTreeFile {base.LushJSXFg1},
    NERDTreeExecFile {base.LushJSXYellow},
    NERDTreeUp {base.LushJSXGray},
    NERDTreeCWD {base.LushJSXGreen},
    NERDTreeHelp {base.LushJSXFg1},
    NERDTreeToggleOn {base.LushJSXGreen},
	}
end)

return M

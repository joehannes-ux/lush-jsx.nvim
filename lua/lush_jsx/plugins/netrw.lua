-- netrw highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    -- netrw
    netrwDir {base.LushJSXAqua},
    netrwClassify {base.LushJSXAqua},
    netrwLink {base.LushJSXGray},
    netrwSymLink {base.LushJSXFg1},
    netrwExe {base.LushJSXYellow},
    netrwComment {base.LushJSXGray},
    netrwList {base.LushJSXBlue},
    netrwHelpCmd {base.LushJSXAqua},
    netrwCmdSep {base.LushJSXFg3},
    netrwVersion {base.LushJSXGreen},
	}
end)

return M

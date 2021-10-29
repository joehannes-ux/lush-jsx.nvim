-- nvimtree highlights
local lush = require("lush")
local base = require("lush_jsx.base")
local colors = require("lush_jsx.colors")

local M = {}

M = lush(function()
	return {
		-- nvimtree
    NvimTreeImageFile     {base.LushJSXBlue},
    NvimTreeGitDirty      {fg = colors.neutral_orange},
    NvimTreeGitDeleted    {fg = colors.red},
    NvimTreeGitStaged     {base.LushJSXGreen},
    NvimTreeGitMerge      {base.LushJSXGreen},
    NvimTreeGitRenamed    {base.LushJSXYellow},
    NvimTreeGitNew        {base.LushJSXYellow},
    NvimTreeIndentMarker  { fg = colors.gray },
    NvimTreeSymlink       { fg = colors.neutral_green },
    NvimTreeFolderIcon    { fg = colors.faded_blue },
    NvimTreeRootFolder    {base.fg3},
    NvimTreeExecFile      {base.LushJSXOrange},
    NvimTreeSpecialFile   {base.LushJSXYellow},
	}
end)

return M
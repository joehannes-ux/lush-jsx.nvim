-- nvimtree highlights
local lush = require("lush")
local base = require("lush_jsx.base")
local colors = require("lush_jsx.colors")

local M = {}

M = lush(function()
  return {
    -- nvimtree
    NvimTreeImageFile { base.LushJSXBlue },
    NvimTreeGitDirty { fg = colors.neutral_orange.hex },
    NvimTreeGitDeleted { fg = colors.neutral_red.hex },
    NvimTreeGitStaged { base.LushJSXGreen },
    NvimTreeGitMerge { base.LushJSXGreen },
    NvimTreeGitRenamed { base.LushJSXYellow },
    NvimTreeGitNew { base.LushJSXYellow },
    NvimTreeIndentMarker { fg = colors.gray.hex },
    NvimTreeSymlink { fg = colors.neutral_green.hex },
    NvimTreeFolderIcon { fg = colors.neutral_aqua.hex },
    NvimTreeRootFolder { base.LushJSXFg1 },
    NvimTreeExecFile { base.LushJSXOrange },
    NvimTreeSpecialFile { base.LushJSXYellow },
  }
end)

return M

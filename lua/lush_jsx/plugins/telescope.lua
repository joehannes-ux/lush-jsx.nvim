---@diagnostic disable: undefined-global
-- telescope highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    -- telescope.nvim
    TelescopeSelection { base.LushJSXOrangeBold },
    TelescopeSlectionCaret { base.LushJSXRed },
    TelescopeMultiSelection { base.LushJSXGray },
    TelescopeNormal { fg = base.LushJSXPurple.fg, bg = "bg" },
    TelescopeBorder { base.LushJSXYellowBold },
    TelescopePromptBorder { TelescopeBorder },
    TelescopeResultsBorder { TelescopeBorder },
    TelescopePreviewBorder { TelescopeBorder },
    TelescopeMatching { base.LushJSXBlue },
    TelescopePromptPrefix { base.LushJSXRed },
    TelescopePrompt { fg = base.LushJSXOrange.fg, gui = "bold", bg = base.LushJSXPurple.fg },
  }
end)

return M

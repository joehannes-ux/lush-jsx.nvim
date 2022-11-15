---@diagnostic disable: undefined-global
-- telescope highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    -- telescope.nvim
    TelescopeSelection { base.LushJSXOrangeBold },
    TelescopeSelectionCaret { base.LushJSXRed },
    TelescopeMultiSelection { base.LushJSXGray },
    TelescopeNormal { fg = base.LushJSXPurple.fg, bg = "bg" },
    TelescopeBorder { base.LushJSXYellow },
    TelescopePromptBorder { TelescopeBorder },
    TelescopeResultsBorder { TelescopeBorder },
    TelescopePreviewBorder { TelescopeBorder },
    TelescopeMatching { base.LushJSXBg4 },
    TelescopePromptPrefix { base.LushJSXRed },
    TelescopePrompt { fg = base.LushJSXOrange.fg, bg = base.LushJSXBg4.fg },
  }
end)

return M

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
    TelescopeNormal { fg = base.LushJSXAquaBold.fg, bg = "bg" },
    TelescopeBorder { base.LushJSXYellowBold },
    TelescopePromptBorder { base.LushJSXYellowBold },
    TelescopeResultsBorder { TelescopeNormal },
    TelescopePreviewBorder { TelescopeNormal },
    TelescopeMatching { base.LushJSXBlue },
    TelescopePromptPrefix { base.LushJSXRed },
    TelescopePrompt { fg = base.LushJSXMagentaBold.fg, bg = base.LushJSXAquaBold.fg },
  }
end)

return M

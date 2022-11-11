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
    TelescopeNormal { base.LushJSXYellowBold },
    TelescopeBorder { TelescopeNormal },
    TelescopePromptBorder { TelescopeNormal },
    TelescopeResultsBorder { TelescopeNormal },
    TelescopePreviewBorder { TelescopeNormal },
    TelescopeMatching { base.LushJSXBlue },
    TelescopePromptPrefix { base.LushJSXRed },
    TelescopePrompt { TelescopeNormal },
  }
end)

return M

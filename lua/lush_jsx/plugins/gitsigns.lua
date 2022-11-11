---@diagnostic disable: undefined-global
-- gitsigns highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    -- gitsigns.nvim
    GitSignsAdd { bg = base.LushJSXGreenSign.fg },
    GitSignsChange { bg = base.LushJSXYellowSign.fg },
    GitSignsDelete { bg = base.LushJSXRedSign.fg },
    -- GitSignsCurrentLineBlame {base.NonText},
    GitSignsCurrentLineBlame { base.LushJSXGrayItalic }
  }
end)

return M

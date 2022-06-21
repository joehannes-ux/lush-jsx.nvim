---@diagnostic disable: undefined-global
-- gitsigns highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    -- gitsigns.nvim
    GitSignsAdd { base.LushJSXGreenSign },
    GitSignsChange { base.LushJSXBlueSign },
    GitSignsDelete { base.LushJSXRedSign },
    -- GitSignsCurrentLineBlame {base.NonText},
  }
end)

return M

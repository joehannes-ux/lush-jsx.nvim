---@diagnostic disable: undefined-global
-- neogit highlights
local lush = require("lush")
local base = require('lush_jsx.base')
local colors = require('lush_jsx.colors')

local neogitaddfg = colors.neutral_green
local neogitdelfg = colors.neutral_red

local neogitbg1 = colors.dark2
local neogitbg2 = colors.dark3
local neogitbg3 = colors.dark4
local neogitfg1 = colors.light3
local neogitfg2 = colors.light2

if vim.o.background == 'light' then
  neogitbg1 = colors.light2
  neogitbg2 = colors.light3
  neogitbg3 = colors.light4
  neogitfg1 = colors.dark2
  neogitfg2 = colors.dark3
end

local M = {}

M = lush(function()
  return {
    -- Neogit
    NeogitNotificationInfo { base.LushJSXGreen },
    NeogitNotificationWarning { base.LushJSXYellow },
    NeogitNotificationError { fg = neogitdelfg },
    NeogitDiffAddHighlight { bg = neogitbg2, fg = neogitaddfg },
    NeogitDiffDeleteHighlight { bg = neogitbg2, fg = neogitdelfg },
    NeogitDiffContextHighlight { bg = neogitbg1, fg = neogitfg1 },
    NeogitHunkHeader { bg = neogitbg2, fg = neogitfg2 },
    NeogitHunkHeaderHighlight { bg = neogitbg3, fg = neogitfg2 },
  }
end)

return M

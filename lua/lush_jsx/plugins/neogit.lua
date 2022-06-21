-- neogit highlights
local lush = require("lush")
local base = require('lush_jsx.base')
local colors = require('lush_jsx.colors')

local neogitaddfg = colors.neutral_green.hex
local neogitdelfg = colors.neutral_red.hex

local neogitbg1 = colors.dark2.hex
local neogitbg2 = colors.dark3.hex
local neogitbg3 = colors.dark4.hex
local neogitfg1 = colors.light3.hex
local neogitfg2 = colors.light2.hex

if vim.o.background == 'light' then
  neogitbg1 = colors.light2.hex
  neogitbg2 = colors.light3.hex
  neogitbg3 = colors.light4.hex
  neogitfg1 = colors.dark2.hex
  neogitfg2 = colors.dark3.hex
end

local M = {}

M = lush(function()
  return {
    -- Neogit
    NeogitNotificationInfo { base.LushJSXGreen },
    NeogitNotificationWarning { base.LushJSXYellow },
    NeogitNotificationError { fg = colors.neutral_red.hex },
    NeogitDiffAddHighlight { bg = neogitbg2, fg = neogitaddfg },
    NeogitDiffDeleteHighlight { bg = neogitbg2, fg = neogitdelfg },
    NeogitDiffContextHighlight { bg = neogitbg1, fg = neogitfg1 },
    NeogitHunkHeader { bg = neogitbg2, fg = neogitfg2 },
    NeogitHunkHeaderHighlight { bg = neogitbg3, fg = neogitfg2 },
  }
end)

return M

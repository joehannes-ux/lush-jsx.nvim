---@diagnostic disable: undefined-global
-- lush_jsx settings handler
local utils = require("lush_jsx.utils")

vim.g.lush_jsx_contrast_dark = "hard"
vim.g.lush_jsx_contrast_light = "medium"

local settings = {
  bold = true,
  italic = true,
  underline = true,
  undercurl = true,
  inverse = true,
  improved_strings = true,
  improved_warnings = true,
  invert_signs = false,
  invert_selection = true,
  invert_tabline = false,
  italicize_comments = true,
  italicize_strings = false,
  invert_indent_guides = false,
}

local styles = {
  bold = "bold",
  italic = "italic",
  underline = "underline",
  undercurl = "undercurl",
  inverse = "inverse",
  improved_strings = "bold",
  improved_warnings = "bold,italic",
  invert_signs = "inverse",
  invert_selection = "inverse,bold",
  invert_tabline = "inverse",
  italic_comments = "italic",
  italic_strings = "italic",
  invert_indent_guides = "inverse",
}

-- setting default values
for k, val in pairs(settings) do
  local key = "lush_jsx_" .. k
  if vim.g[key] == nil then
    vim.g[key] = val
  end
  if not utils.tobool(vim.g[key]) then
    styles[k] = ""
  end
end

return { settings = settings, styles = styles }

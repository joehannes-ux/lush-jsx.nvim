-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    elixirDocString {base.Comment},
    elixirStringDelimiter {base.LushJSXGreen},
    elixirInterpolationDelimiter {base.LushJSXAqua},
    elixirModuleDeclaration {base.LushJSXYellow},
  }
end)

return M

---@diagnostic disable: undefined-global
-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
		jsxTagName({ base.LushJSXAqua }),
		jsxComponentName({ base.LushJSXGreen }),
		jsxCloseString({ base.LushJSXFg4 }),
		jsxAttrib({ base.LushJSXYellow }),
		jsxEqual({ base.LushJSXAqua }),
	}
end)

return M

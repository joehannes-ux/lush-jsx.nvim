---@diagnostic disable: undefined-global
-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
		jsxTagName({ base.LushJSXAquaBold }),
		jsxComponentName({ base.LushJSXBlueBold }),
		jsxCloseString({ base.LushJSXFg4 }),
		jsxAttrib({ base.LushJSXAqua }),
		jsxEqual({ base.LushJSXMagentaBold }),
	}
end)

return M

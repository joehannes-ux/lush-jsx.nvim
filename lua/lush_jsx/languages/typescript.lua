---@diagnostic disable: undefined-global
-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    typescriptReserved({ base.LushJSXMagentaBold }),
    typescriptLabel({ base.LushJSXMagentaBold }),
    typescriptFuncKeyword({ base.LushJSXOrangeItalicBold }),
    typescriptIdentifier({ base.LushJSXAquaBold }),
    typescriptBraces({ base.LushJSXBlueBold }),
    typescriptEndColons({ base.LushJSXFg1 }),
    typescriptDOMObjects({ base.LushJSXAquaBold }),
    typescriptAjaxMethods({ base.LushJSXRedItalicBold }),
    typescriptLogicSymbols({ base.LushJSXOrangeBoldContrasted }),
    typescriptDocSeeTag({ base.Comment }),
    typescriptDocParam({ base.Comment }),
    typescriptDocTags({ base.Comment }),
    typescriptGlobalObjects({ base.LushJSXPurpleBold }),
    typescriptOpSymbols({ base.LushJSXOrangeBnoldContrasted }),
    typescriptHtmlElemProperties({ base.LushJSXMagenta }),
    typescriptNull({ base.LushJSXBlueBold }),
    typescriptInterpolationDelimiter({ base.LushJSXRedBold }),
    typescriptArrowFunc({ base.LushJSXOrangeItalicBold }),
    typescriptUnion({ base.LushJSXBlueBold }),
    typescriptDotNotation({ base.LushJSXRedBold }),
    typescriptGlobalObjectDot({ base.LushJSXRedBold }),
  }
end)

return M

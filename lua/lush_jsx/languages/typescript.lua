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
    -- typescriptParens({ base.LushJSX }),
    typescriptOpSymbols({ base.LushJSXOrangeBoldContrasted }),
    typescriptHtmlElemProperties({ base.LushJSXMagenta }),
    typescriptNull({ base.LushJSXBlueBold }),
    typescriptInterpolationDelimiter({ base.LushJSXRedBold }),
    typescriptArrowFunc({ base.LushJSXOrangeItalicBold }),
    -- typescriptCharacter({ }),
    typescriptUnion({ base.LushJSXBlueBold }),
    typescriptDotNotation({ base.LushJSXRedBold }),
    typescriptGlobalObjectDot({ typescriptDotNotation }),
  }
end)

return M

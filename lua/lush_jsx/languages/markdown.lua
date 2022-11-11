---@diagnostic disable: undefined-global
-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")
local styles = require("lush_jsx.settings").styles

local M = {}

M = lush(function()
  return {
    markdownItalic { fg = base.LushJSXFg3.fg, gui = styles.italic_strings },
    markdownH1 { base.LushJSXRedBold },
    markdownH2 { base.LushJSXOrangeBold },
    markdownH3 { base.LushJSXYellowBold },
    markdownH4 { base.LushJSXRed },
    markdownH5 { base.LushJSXOrange },
    markdownH6 { base.LushJSXYellow },
    markdownCode { bg = base.LushJSXBg4.fg },
    markdownCodeBlock { markdownCode },
    markdownCodeDelimiter { base.LushJSXRed },
    markdownBlockquote { base.LushJSXGrayBold },
    markdownListMarker { base.LushJSXGrayBold },
    markdownOrderedListMarker { base.LushJSXGrayBold },
    markdownRule { base.LushJSXGray },
    markdownHeadingRule { base.LushJSXGray },
    markdownUrlDelimiter { base.LushJSXFg3 },
    markdownLinkDelimiter { base.LushJSXFg3 },
    markdownLinkTextDelimiter { base.LushJSXFg3 },
    markdownHeadingDelimiter { base.LushJSXFg3 },
    markdownUrl { base.LushJSXBlueBold },
    markdownUrlTitleDelimiter { base.LushJSXFg3 },
    markdownLinkText { fg = base.LushJSXGray.fg, gui = styles.underline },
    markdownIdDeclaration { markdownLinkText },
  }
end)

return M

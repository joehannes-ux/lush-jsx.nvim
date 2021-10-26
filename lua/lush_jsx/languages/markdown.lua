-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")
local styles = require("lush_jsx.settings").styles

local M = {}

M = lush(function()
  return {
    markdownItalic {fg = base.LushJSXFg3.fg.hex, gui = styles.italic_strings},
    markdownH1 {base.LushJSXAquaBold},
    markdownH2 {base.LushJSXRedBold},
    markdownH3 {base.LushJSXPurpleBold},
    markdownH4 {markdownH3},
    --[[ markdownH5 {base.LushJSXYellow},
    markdownH6 {markdownH5}, ]]
    markdownCode {base.LushJSXGreen},
    markdownCodeBlock {base.LushJSXGreen},
    markdownCodeDelimiter {base.LushJSXGreen},
    markdownBlockquote {base.LushJSXGray},
    markdownListMarker {base.LushJSXGray},
    markdownOrderedListMarker {base.LushJSXGray},
    markdownRule {base.LushJSXGray},
    markdownHeadingRule {base.LushJSXGray},
    markdownUrlDelimiter {base.LushJSXFg3},
    markdownLinkDelimiter {base.LushJSXFg3},
    markdownLinkTextDelimiter {base.LushJSXFg3},
    markdownHeadingDelimiter {base.LushJSXOrange},
    markdownUrl {base.LushJSXPurple},
    markdownUrlTitleDelimiter {base.LushJSXAqua},
    markdownLinkText {fg = base.LushJSXGray.fg.hex, gui = styles.underline},
    markdownIdDeclaration {markdownLinkText},
  }
end)

return M

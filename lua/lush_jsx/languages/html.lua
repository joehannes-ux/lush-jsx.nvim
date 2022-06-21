---@diagnostic disable: undefined-global
-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")
local styles = require("lush_jsx.settings").styles
local table_concat = table.concat

local M = {}

M = lush(function()
  return {
    htmlTag { base.LushJSXRedItalicBold },
    htmlEndTag { base.LushJSXRedItalicBold },
    htmlTagName { base.LushJSXYellowBold },
    htmlArg { base.LushJSXMagenta },
    htmlScriptTag { base.LushJSXBlue },
    htmlTagN { base.LushJSXYellow },
    htmlSpecialTagName { base.LushJSXYellowBold },
    htmlSpecialChar { base.LushJSXRed },
    htmlLink { fg = base.LushJSXFg4.fg, gui = styles.underline },
    htmlBold { fg = base.LushJSXFg1.fg, gui = styles.bold },
    htmlBoldUnderline {
      fg = base.LushJSXFg1.fg,
      gui = table_concat({ styles.bold, styles.underline }, ","),
    },
    htmlBoldItalic {
      fg = base.LushJSXFg1.fg,
      gui = table_concat({ styles.bold, styles.italic_strings }, ","),
    },
    htmlBoldUnderlineItalic {
      fg = base.LushJSXFg1.fg,
      gui = table_concat({ styles.bold, styles.italic_strings }, ","),
    },
    htmlItalic { fg = base.LushJSXFg1.fg, gui = styles.italic_strings },
  }
end)

return M

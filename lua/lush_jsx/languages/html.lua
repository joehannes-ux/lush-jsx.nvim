-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")
local styles = require("lush_jsx.settings").styles
local table_concat = table.concat

local M = {}

M = lush(function()
  return {
    htmlTag {base.LushJSXAquaBold},
    htmlEndTag {base.LushJSXAquaBold},
    htmlTagName {base.LushJSXBlue},
    htmlArg {base.LushJSXOrange},
    htmlScriptTag {base.LushJSXPurple},
    htmlTagN {base.LushJSXFg1},
    htmlSpecialTagName {base.LushJSXBlue},
    htmlSpecialChar {base.LushJSXRed},
    htmlLink {fg = base.LushJSXFg4.fg.hex, gui = styles.underline},
    htmlBold {fg = base.LushJSXFg1.fg.hex, gui = styles.bold},
    htmlBoldUnderline {
      fg = base.LushJSXFg1.fg.hex,
      gui = table_concat({styles.bold, styles.underline}, ","),
    },
    htmlBoldItalic {
      fg = base.LushJSXFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlBoldUnderlineItalic {
      fg = base.LushJSXFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlItalic {fg = base.LushJSXFg1.fg.hex, gui = styles.italic_strings},
  }
end)

return M

-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")
local styles = require("lush_jsx.settings").styles

local M = {}

M = lush(function()
  return {
    clojureKeyword { base.LushJSXBlue },
    clojureCond { base.LushJSXOrange },
    clojureSpecial { base.LushJSXOrange },
    clojureDefine { base.LushJSXOrange },
    clojureFunc { base.LushJSXYellow },
    clojureRepeat { base.LushJSXYellow },
    clojureCharacter { base.LushJSXAqua },
    clojureStringEscape { base.LushJSXAqua },
    clojureException { base.LushJSXRed },
    clojureRegexp { base.LushJSXAqua },
    clojureRegexpEscape { base.LushJSXAqua },
    clojureParen { base.LushJSXFg3 },
    clojureAnonArg { base.LushJSXYellow },
    clojureVariable { base.LushJSXBlue },
    clojureMacro { base.LushJSXOrange },
    clojureMeta { base.LushJSXYellow },
    clojureDeref { base.LushJSXYellow },
    clojureQuote { base.LushJSXYellow },
    clojureUnquote { base.LushJSXYellow },
    clojureRegexpCharClass { fg = base.LushJSXFg3.fg, gui = styles.bold },
    clojureRegexpMod { clojureRegexpCharClass },
    clojureRegexpQuantifier { clojureRegexpCharClass },
  }
end)

return M

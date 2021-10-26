-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

-- java
M = lush(function()
  return {
    javaAnnotation {base.LushJSXBlue},
    javaDocTags {base.LushJSXAqua},
    javaCommentTitle {base.Comment},
    javaParen {base.LushJSXFg3},
    javaParen1 {base.LushJSXFg3},
    javaParen2 {base.LushJSXFg3},
    javaParen3 {base.LushJSXFg3},
    javaParen4 {base.LushJSXFg3},
    javaParen5 {base.LushJSXFg3},
    javaOperator {base.LushJSXOrange},
  }
end)

return M

-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

-- xml
M = lush(function()
  return {
    xmlTag {base.LushJSXAquaBold},
    xmlEndTag {base.LushJSXAquaBold},
    xmlTagName {base.LushJSXBlue},
    xmlEqual {base.LushJSXBlue},
    docbkKeyword {base.LushJSXAquaBold},
    xmlDocTypeDecl {base.LushJSXGray},
    xmlDocTypeKeyword {base.LushJSXPurple},
    xmlCdataStart {base.LushJSXGray},
    xmlCdataCdata {base.LushJSXPurple},
    dtdFunction {base.LushJSXGray},
    dtdTagName {base.LushJSXPurple},
    xmlAttrib {base.LushJSXOrange},
    xmlProcessingDelim {base.LushJSXGray},
    dtdParamEntityPunct {base.LushJSXGray},
    dtdParamEntityDPunct {base.LushJSXGray},
    xmlAttribPunct {base.LushJSXGray},
    xmlEntity {base.LushJSXRed},
    xmlEntityPunct {base.LushJSXRed},
  }
end)

return M

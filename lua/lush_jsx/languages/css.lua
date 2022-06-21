---@diagnostic disable: undefined-global
-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    cssBraces { base.LushJSXBlue },
    cssFunctionName { base.LushJSXYellow },
    cssIdentifier { base.LushJSXOrange },
    cssClassName { base.LushJSXGreen },
    cssColor { base.LushJSXBlue },
    cssSelectorOp { base.LushJSXRed },
    cssSelectorOp2 { base.LushJSXRed },
    cssImportant { base.LushJSXRed },
    cssVendor { base.LushJSXFg1 },
    cssTextProp { base.LushJSXAqua },
    cssAnimationProp { base.LushJSXAqua },
    cssUIProp { base.LushJSXMagenta },
    cssTransformProp { base.LushJSXPurple },
    cssTransitionProp { base.LushJSXPurple },
    cssPrintProp { base.LushJSXAqua },
    cssPositioningProp { base.LushJSXYellow },
    cssBoxProp { base.LushJSXYellow },
    cssFontDescriptorProp { base.String },
    cssFlexibleBoxProp { base.LushJSXYellow },
    cssBorderOutlineProp { base.LushJSXYellow },
    cssBackgroundProp { base.LushJSXMagenta },
    cssMarginProp { base.LushJSXYellow },
    cssListProp { base.LushJSXAqua },
    cssTableProp { base.LushJSXAqua },
    cssFontProp { base.String },
    cssPaddingProp { base.LushJSXYellow },
    cssDimensionProp { base.LushJSXAqua },
    cssRenderProp { base.LushJSXAqua },
    cssColorProp { base.LushJSXMagenta },
    cssGeneratedContentProp { base.LushJSXAqua },
  }
end)

return M

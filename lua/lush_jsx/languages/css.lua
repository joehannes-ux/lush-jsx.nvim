-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    cssBraces {base.LushJSXBlue},
    cssFunctionName {base.LushJSXYellow},
    cssIdentifier {base.LushJSXOrange},
    cssClassName {base.LushJSXGreen},
    cssColor {base.LushJSXBlue},
    cssSelectorOp {base.LushJSXBlue},
    cssSelectorOp2 {base.LushJSXBlue},
    cssImportant {base.LushJSXGreen},
    cssVendor {base.LushJSXFg1},
    cssTextProp {base.LushJSXAqua},
    cssAnimationProp {base.LushJSXAqua},
    cssUIProp {base.LushJSXYellow},
    cssTransformProp {base.LushJSXAqua},
    cssTransitionProp {base.LushJSXAqua},
    cssPrintProp {base.LushJSXAqua},
    cssPositioningProp {base.LushJSXYellow},
    cssBoxProp {base.LushJSXAqua},
    cssFontDescriptorProp {base.LushJSXAqua},
    cssFlexibleBoxProp {base.LushJSXAqua},
    cssBorderOutlineProp {base.LushJSXAqua},
    cssBackgroundProp {base.LushJSXAqua},
    cssMarginProp {base.LushJSXAqua},
    cssListProp {base.LushJSXAqua},
    cssTableProp {base.LushJSXAqua},
    cssFontProp {base.LushJSXAqua},
    cssPaddingProp {base.LushJSXAqua},
    cssDimensionProp {base.LushJSXAqua},
    cssRenderProp {base.LushJSXAqua},
    cssColorProp {base.LushJSXAqua},
    cssGeneratedContentProp {base.LushJSXAqua},
  }
end)

return M

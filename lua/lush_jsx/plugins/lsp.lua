---@diagnostic disable: undefined-global
-- lsp highlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
  return {
    -- LSP
    LspCodeLens { bg = base.LushJSXBg4.fg, guibg = base.LushJSXBg4.fg },
    -- LspDiagnosticsDefaultError {base.LushJSXRed},
    LspDiagnosticsSignError { base.LushJSXErrorSign },
    -- LspDiagnosticsUnderlineError {base.LushJSXRedUnderline},
    -- LspDiagnosticsDefaultWarning {base.LushJSXYellow},
    LspDiagnosticsSignWarning { base.LushJSXWarningSign },
    -- LspDiagnosticsUnderlineWarning {base.LushJSXYellowUnderline},
    -- LspDiagnosticsDefaultInformation {base.LushJSXBlue},
    LspDiagnosticsSignInformation { base.LushJSXBlueSign },
    -- LspDiagnosticsUnderlineInformation {base.LushJSXBlueUnderline},
    -- LspDiagnosticsDefaultHint {base.LushJSXAqua},
    LspDiagnosticsSignHint { base.LushJSXAquaSign },
    LspDiagnosticsUnderlineHint { base.LushJSXAquaUnderline },
    -- LspDiagnosticsFloatingError {base.LushJSXRed},
    -- LspDiagnosticsFloatingWarning {base.LushJSXOrange},
    -- LspDiagnosticsFloatingInformation {base.LushJSXBlue},
    -- LspDiagnosticsFloatingHint {base.LushJSXAqua},
    LspDiagnosticsVirtualTextError { base.LushJSXError },
    LspDiagnosticsVirtualTextWarning { base.LushJSXWarning },
    LspDiagnosticsVirtualTextInformation { base.LushJSXBlue },
    LspDiagnosticsVirtualTextHint { base.LushJSXAqua },
    -- LspReferenceRead {base.LushJSXYellowBold},
    -- LspReferenceText {base.LushJSXYellowBold},
    -- LspReferenceWrite {base.LushJSXYellowBold},
  }
end)

return M

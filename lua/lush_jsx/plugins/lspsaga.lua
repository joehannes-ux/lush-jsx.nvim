---@diagnostic disable: undefined-global
-- lspsaga highlights
local lush = require("lush")
local base = require("lush_jsx.base")
local styles = require("lush_jsx.settings").styles

local M = {}

M = lush(function()
  return {
    -- lspsaga.nvim
    LspSagaDiagnosticBorder { base.NormalNC },
    LspSagaDiagnosticHeader { base.LushJSXRed },
    LspSagaDiagnosticTruncateLine { base.NormalNC },
    LspFloatWinBorder { base.NormalNC },
    LspSagaBorderTitle { base.Title },
    TargetWord { base.Error },
    ReferencesCount { base.Title },
    ReferencesIcon { base.Special },
    DefinitionCount { base.Title },
    TargetFileName { base.Comment },
    DefinitionIcon { base.Special },
    ProviderTruncateLine { base.NormalNC },
    SagaShadow { base.LushJSXBg0 },
    LspSagaFinderSelection { base.Search },
    DiagnosticTruncateLine { base.NormalNC },
    DiagnosticError { base.LspDiagnosticsDefaultError },
    DiagnosticWarning { base.LspDiagnosticsDefaultWarning },
    DiagnosticInformation { base.LspDiagnosticsDefaultInformation },
    DiagnosticHint { base.LspDiagnosticsDefaultHint },
    DefinitionPreviewTitle { base.Title },
    LspSagaShTruncateLine { base.NormalNC },
    LspSagaDocTruncateLine { base.NormalNC },
    LineDiagTuncateLine { base.NormalNC },
    LspSagaCodeActionTitle { base.Title },
    LspSagaCodeActionTruncateLine { base.NormalNC },
    LspSagaCodeActionContent { base.Normal },
    LspSagaRenamePromptPrefix { base.LushJSXFg2 },
    LspSagaRenameBorder { gui = styles.bold },
    LspSagaHoverBorder { gui = styles.bold },
    LspSagaSignatureHelpBorder { gui = styles.bold },
    LspSagaCodeActionBorder { gui = styles.bold },
    LspSagaAutoPreview {},
    LspSagaDefPreviewBorder { gui = styles.bold },
    LspLinesDiagBorder { gui = styles.bold },
  }
end)

return M

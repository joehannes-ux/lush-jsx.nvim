-- treesitter highlights
local lush = require("lush")
local base = require("lush_jsx.base")
local styles = require("lush_jsx.settings").styles
local colors = require("lush_jsx.colors")
local table_concat = table.concat

local M = {}

M = lush(function()
	return {
    -- nvim-treesitter
    TSNone {},
    TSError {base.LushJSXError},
    TSTitle {base.Title},
    TSLiteral {base.String},
    TSURI {base.Underlined},
    TSVariable {base.LushJSXFg1},
    TSPunctDelimiter {base.Delimiter},
    TSPunctBracket {base.Delimiter},
    TSPunctSpecial {base.Delimiter},
    TSConstant {base.Constant},
    TSConstBuiltin {base.Special},
    TSConstMacro {base.Define},
    TSString {base.String},
    TSStringRegex {base.String},
    TSStringEscape {base.SpecialChar},
    TSCharacter {base.Character},
    TSNumber {base.Number},
    TSBoolean {base.Boolean},
    TSFloat {base.Float},
    TSFunction {base.Function},
    TSFuncBuiltin {base.Special},
    TSFuncMacro {base.Macro},
    TSParameter {base.Identifier},
    TSParameterReference {TSParameter},
    TSMethod {base.Function},
    TSField {base.Identifier},
    TSProperty {base.Identifier},
    TSConstructor {base.Special},
    TSAnnotation {base.PreProc},
    TSAttribute {base.PreProc},
    TSNamespace {base.Include},
    TSConditional {base.Conditional},
    TSRepeat {base.Repeat},
    TSLabel {base.Label},
    TSOperator {base.Operator},
    TSKeyword {base.Keyword},
    TSKeywordFunction {base.Keyword},
    TSKeywordOperator {TSOperator},
    TSException {base.Exception},
    TSType {base.Type},
    TSTypeBuiltin {base.Type},
    TSInclude {base.Include},
    TSVariableBuiltin {base.Special},
    TSText {TSNone},
    TSStrong {gui = styles.bold},
    TSEmphasis {gui = styles.italic_strings},
    TSUnderline {gui = styles.underline},
    TSComment {base.Comment},
    TSStructure {base.LushJSXOrange},
    TSTag {base.LushJSXOrange},
    TSTagDelimiter {base.LushJSXGreen},
    TSNote {base.Todo},
    TSWarning {fg = colors.bright_yellow, gui = table_concat({styles.bold, styles.italicize_comments}, ",")},
    TSDanger {fg = colors.bright_red , gui = table_concat({styles.bold, styles.italicize_comments}, ",")}
	}
end)

return M
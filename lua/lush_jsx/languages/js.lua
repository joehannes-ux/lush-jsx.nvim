---@diagnostic disable: undefined-global
-- language specific higlights
local lush = require("lush")
local base = require("lush_jsx.base")

local M = {}

M = lush(function()
	return {
		javaScriptBraces({ base.LushJSXRedBold }),
		javaScriptFunction({ base.LushJSXAquaItalicBold }),
		javaScriptIdentifier({ base.LushJSXPurple }),
		javaScriptMember({ base.LushJSXPurpleBold }),
		javaScriptNumber({ base.LushJSXMagenta }),
		javaScriptNull({ base.LushJSXMagentaBold }),
		javaScriptParens({ base.LushJSXRedBold }),
		javascriptImport({ base.LushJSXRedBold }),
		javascriptExport({ base.LushJSXRedBold }),
		javascriptClassKeyword({ base.LushJSXRedBold }),
		javascriptClassExtends({ base.LushJSXRed }),
		javascriptDefault({ base.LushJSXRedItalicBold }),
		javascriptClassName({ base.LushJSXPurpleBold }),
		javascriptClassSuperName({ base.LushJSXPurpleBold }),
		javascriptGlobal({ base.LushJSXRedUnderline }),
		javascriptEndColons({ base.LushJSXFg1 }),
		javascriptFuncArg({ base.LushJSXPurpleBold }),
		javascriptGlobalMethod({ base.LushJSXFg1 }),
		javascriptNodeGlobal({ base.LushJSXFg1 }),
		javascriptBOMWindowProp({ base.LushJSXFg1 }),
		javascriptArrayMethod({ base.LushJSXPurpleItalic }),
		javascriptArrayStaticMethod({ base.LushJSXPurpleItalic }),
		javascriptCacheMethod({ base.LushJSXPurpleItalic }),
		javascriptDateMethod({ base.LushJSXPurpleItalic }),
		javascriptMathStaticMethod({ base.LushJSXPurpleItalic }),
		javascriptProp({ base.LushJSXBlue }),
		javascriptURLUtilsProp({ base.LushJSXBlueBold }),
		javascriptBOMNavigatorProp({ base.LushJSXBlueBold }),
		javascriptDOMDocMethod({ base.LushJSXPurpleItalic }),
		javascriptDOMDocProp({ base.LushJSXBlueBold }),
		javascriptBOMLocationMethod({ base.LushJSXPurpleItalic }),
		javascriptBOMWindowMethod({ base.LushJSXPurpleItalic }),
		javascriptStringMethod({ base.LushJSXPurpleItalic }),
		javascriptVariable({ base.LushJSXAqua }),
		javascriptClassSuper({ base.LushJSXRed }),
		javascriptFuncKeyword({ base.LushJSXRedItalicBold }),
		javascriptAsyncFunc({ base.LushJSXAquaItalic }),
		javascriptClassStatic({ base.LushJSXRedItalic }),
		javascriptOperator({ base.Operator }),
		javascriptForOperator({ base.Repeat }),
		javascriptYield({ base.LushJSXRedItalicBold }),
		javascriptExceptions({ base.LushJSXError }),
		javascriptMessage({ base.LushJSXBlue }),
		javascriptTemplateSB({ base.LushJSXPurple }),
		javascriptTemplateSubstitution({ base.LushJSXPurple }),
		javascriptLabel({ base.LushJSXBlue }),
		javascriptObjectLabel({ base.LushJSXBlue }),
		javascriptPropertyName({ base.LushJSXBlue }),
		javascriptLogicSymbols({ base.LushJSXRedBold }),
		javascriptArrowFunc({ base.LushJSXRedBold }),
		javascriptDocParamName({ base.LushJSXFg4 }),
		javascriptDocTags({ base.LushJSXFg4 }),
		javascriptDocNotation({ base.LushJSXFg4 }),
		javascriptDocParamType({ base.LushJSXFg4 }),
		javascriptDocNamedParamType({ base.LushJSXFg4 }),
		javascriptBrackets({ base.LushJSXRedBold }),
		javascriptDOMElemAttrs({ base.LushJSXAqua }),
		javascriptDOMEventMethod({ base.LushJSXPurpleItalic }),
		javascriptDOMNodeMethod({ base.LushJSXPurpleItalic }),
		javascriptDOMStorageMethod({ base.LushJSXPurpleItalic }),
		javascriptHeadersMethod({ base.LushJSXPurpleItalic }),
		javascriptAsyncFuncKeyword({ base.LushJSXRedItalicBold }),
		javascriptAwaitFuncKeyword({ base.LushJSXRedItalicBold }),
		jsClassKeyword({ base.LushJSXAqua }),
		jsExtendsKeyword({ base.LushJSXAqua }),
		jsExportDefault({ base.LushJSXAqua }),
		jsTemplateBraces({ base.LushJSXAqua }),
		jsGlobalNodeObjects({ base.LushJSXYellowBold }),
		jsGlobalObjects({ base.LushJSXYellowBold }),
		-- jsObjectKey({ base.LushJSXGreenBold }),
		-- jsFunction({ base.LushJSXAqua }),
		-- jsFuncCall({ base.LushJSXBlue }),
		-- jsFuncParens({ base.LushJSXFg3 }),
		-- jsParens({ base.LushJSXFg3 }),
		-- jsNull({ base.LushJSXPurple }),
		jsUndefined({ base.LushJSXMagentaBold }),
		-- jsClassDefinition({ base.LushJSXYellow }),
		-- jsOperatorKeyword({ base.LushJSXRed }),
	}
end)

return M

---@diagnostic disable: undefined-global
local lush = require("lush")
local colors = require("lush_jsx.colors")
local styles = require("lush_jsx.settings").styles
local utils = require("lush_jsx.utils")
local hsl = require("lush.hsl")

-- options (dark mode by default)
local bg0 = colors.dark0
local bg1 = colors.dark1
local bg2 = colors.dark2
local bg3 = colors.dark3
local bg4 = colors.dark4

local fg0 = colors.light0
local fg1 = colors.light1
local fg2 = colors.light2
local fg3 = colors.light3
local fg4 = colors.light4

local red = colors.darkbg_red
local green = colors.darkbg_green
local yellow = colors.darkbg_yellow
local blue = colors.darkbg_blue
local purple = colors.darkbg_purple
local aqua = colors.darkbg_aqua
local orange = colors.darkbg_orange
local magenta = colors.darkbg_magenta
local gray = colors.gray

local bg = vim.o.background
if bg == nil then
  bg = "dark"
  vim.o.background = bg
end

-- swap colors if light mode
if bg == "light" then
  bg0 = colors.light0
  bg1 = colors.light1
  bg2 = colors.light2
  bg3 = colors.light3
  bg4 = colors.light4
  fg0 = colors.dark0
  fg1 = colors.dark1
  fg2 = colors.dark2
  fg3 = colors.dark3
  fg4 = colors.dark4
  red = colors.lightbg_red
  green = colors.lightbg_green
  yellow = colors.lightbg_yellow
  blue = colors.lightbg_blue
  purple = colors.lightbg_purple
  aqua = colors.lightbg_aqua
  orange = colors.lightbg_orange
  magenta = colors.lightbg_magenta
end

-- handle light/dark contrast settings
local contrast = vim.g["lush_jsx_contrast_" .. bg]
if contrast == "hard" then
  bg0 = colors[bg .. "0_hard"]
elseif contrast == "soft" then
  bg0 = colors[bg .. "0"]
end

-- extending colors table with basic names for easy customization in g:lush_jsx_* options
local my_colors = {}
my_colors.bg0 = bg0
my_colors.bg1 = bg1
my_colors.bg2 = bg2
my_colors.bg3 = bg3
my_colors.bg4 = bg4
my_colors.fg0 = fg0
my_colors.fg1 = fg1
my_colors.fg2 = fg2
my_colors.fg3 = fg3
my_colors.fg4 = fg4
my_colors.red = red
my_colors.green = green
my_colors.yellow = yellow
my_colors.blue = blue
my_colors.purple = purple
my_colors.aqua = aqua
my_colors.orange = orange
my_colors.magenta = magenta

local hls_cursor = utils.get_color_from_var(vim.g.lush_jsx_hls_cursor, orange, my_colors)
local hls_highlight = utils.get_color_from_var(vim.g.lush_jsx_hls_highlight, yellow, my_colors)
local number_column = utils.get_color_from_var(vim.g.lush_jsx_number_column, bg2, my_colors)
local color_column = utils.get_color_from_var(vim.g.lush_jsx_color_column, bg1, my_colors)
local vert_split = utils.get_color_from_var(vim.g.lush_jsx_vert_split, yellow, my_colors)
local tabline_sel = utils.get_color_from_var(vim.g.lush_jsx_tabline_sel, aqua, my_colors)
local sign_column = utils.get_color_from_var(vim.g.lush_jsx_sign_column, bg4, my_colors)

local improved_strings_fg = hsl(fg0).mix(hsl(green), 21)
local improved_strings_bg = bg1
local improved_strings_gui = styles.italic_strings

local special_string_fg = hsl(fg0).mix(hsl(green), 50)
local special_string_bg = bg2
local special_string_gui = styles.italic_strings

if not utils.tobool(vim.g.lush_jsx_improved_strings) then
  improved_strings_fg = green
  improved_strings_bg = nil
  improved_strings_gui = ""
  special_string_fg = green
  special_string_bg = nil
  special_string_gui = ""
end

local background = nil

if not utils.tobool(vim.g.lush_jsx_transparent_bg) then
  background = bg0
end

-- neovim terminal mode colors
vim.g.terminal_color_0 = bg0
vim.g.terminal_color_8 = gray
vim.g.terminal_color_1 = colors.neutral_red
vim.g.terminal_color_9 = red
vim.g.terminal_color_2 = colors.neutral_green
vim.g.terminal_color_10 = green
vim.g.terminal_color_3 = colors.neutral_yellow
vim.g.terminal_color_11 = yellow
vim.g.terminal_color_4 = colors.neutral_blue
vim.g.terminal_color_12 = blue
vim.g.terminal_color_5 = colors.neutral_purple
vim.g.terminal_color_13 = purple
vim.g.terminal_color_6 = colors.neutral_aqua
vim.g.terminal_color_14 = aqua
vim.g.terminal_color_7 = fg4
vim.g.terminal_color_15 = fg1

vim.g.colors_name = "lush_jsx"

local table_concat = table.concat

local base_group = lush(function()
  return {
    -- Base groups
    LushJSXFg0({ fg = fg0 }),
    LushJSXFg1({ fg = fg1 }),
    LushJSXFg2({ fg = fg2 }),
    LushJSXFg3({ fg = fg3 }),
    LushJSXFg4({ fg = fg4 }),
    LushJSXGray({ fg = gray }),
    LushJSXGrayBold({ fg = gray, gui = styles.bold }),
    LushJSXBg0({ fg = bg0 }),
    LushJSXBg1({ fg = bg1 }),
    LushJSXBg2({ fg = bg2 }),
    LushJSXBg3({ fg = bg3 }),
    LushJSXBg4({ fg = bg4 }),
    LushJSXError({ fg = colors.error, gui = styles.inverse }),
    LushJSXWarning({ fg = colors.neutral_orange, gui = styles.inverse }),
    LushJSXInformation({ fg = colors.neutral_yellow, gui = styles.inverse }),
    LushJSXHint({ fg = colors.neutral_aqua, gui = styles.inverse }),
    LushJSXRed({ fg = red }),
    LushJSXRedBold({ fg = red, gui = styles.bold }),
    LushJSXRedItalic({ fg = red, gui = styles.italic }),
    LushJSXRedItalicBold({ fg = red, gui = table_concat({ styles.bold, styles.italic }, ",") }),
    LushJSXGreen({ fg = green }),
    LushJSXGreenBold({ fg = green, gui = styles.bold }),
    LushJSXYellow({ fg = yellow }),
    LushJSXYellowBold({ fg = yellow, gui = styles.bold }),
    LushJSXBlue({ fg = blue }),
    LushJSXBlueBold({ fg = blue, gui = styles.bold }),
    LushJSXBlueItalic({ fg = blue, gui = styles.italic }),
    LushJSXPurple({ fg = purple }),
    LushJSXPurpleBold({ fg = purple, gui = styles.bold }),
    LushJSXPurpleBoldContrasted({ fg = purple, bg = bg4, gui = styles.bold }),
    LushJSXPurpleItalic({ fg = purple, gui = styles.italic }),
    LushJSXPurpleItalicBold({ fg = purple, gui = table_concat({ styles.bold, styles.italic }, ",") }),
    LushJSXAqua({ fg = aqua }),
    LushJSXAquaBold({ fg = aqua, gui = styles.bold }),
    LushJSXAquaItalic({ fg = aqua, gui = styles.italic }),
    LushJSXAquaItalicBold({ fg = aqua, gui = table_concat({ styles.bold, styles.italic }, ",") }),
    LushJSXOrange({ fg = orange }),
    LushJSXOrangeBold({ fg = orange, gui = styles.bold }),
    LushJSXOrangeBoldContrasted({ fg = orange, bg = bg2, gui = styles.bold }),
    LushJSXOrangeItalicBold({ fg = orange, gui = table_concat({ styles.bold, styles.italic }, ",") }),
    LushJSXMagenta({ fg = magenta }),
    LushJSXMagentaBold({ fg = magenta, gui = styles.bold }),

    LushJSXErrorSign({ fg = colors.error, bg = sign_column, gui = styles.invert_signs }),
    LushJSXWarningSign({ fg = colors.neutral_orange, bg = sign_column, gui = styles.invert_signs }),
    LushJSXRedSign({ fg = red, bg = sign_column, gui = styles.invert_signs }),
    LushJSXGreenSign({ fg = green, bg = sign_column, gui = styles.invert_signs }),
    LushJSXYellowSign({ fg = yellow, bg = sign_column, gui = styles.invert_signs }),
    LushJSXBlueSign({ fg = blue, bg = sign_column, gui = styles.invert_signs }),
    LushJSXPurpleSign({ fg = purple, bg = sign_column, gui = styles.invert_signs }),
    LushJSXAquaSign({ fg = aqua, bg = sign_column, gui = styles.invert_signs }),
    LushJSXOrangeSign({ fg = orange, bg = sign_column, gui = styles.invert_signs }),
    LushJSXMagentaSign({ fg = magenta, bg = sign_column, gui = styles.invert_signs }),

    LushJSXRedUnderline({ gui = styles.undercurl, sp = red }),
    LushJSXGreenUnderline({ gui = styles.undercurl, sp = green }),
    LushJSXYellowUnderline({ gui = styles.undercurl, sp = yellow }),
    LushJSXBlueUnderline({ gui = styles.undercurl, sp = blue }),
    LushJSXPurpleUnderline({ gui = styles.undercurl, sp = purple }),
    LushJSXAquaUnderline({ gui = styles.undercurl, sp = aqua }),
    LushJSXOrangeUnderline({ gui = styles.undercurl, sp = orange }),
    LushJSXMagentaUnderline({ gui = styles.undercurl, sp = magenta }),

    ColorColumn({ bg = color_column }),
    Conceal({ fg = blue }),
    Cursor({ bg = yellow }),
    lCursor({ Cursor }),
    iCursor({ Cursor }),
    vCursor({ Cursor }),
    CursorIM({ Cursor }),
    CursorLine({ bg = yellow }),
    CursorColumn({ bg = yellow }),
    Directory({ LushJSXAquaBold }),
    DiffAdd({ fg = green, bg = bg0 }),
    DiffChange({ fg = aqua, bg = bg0 }),
    DiffDelete({ fg = colors.neutral_red, bg = bg0 }),
    DiffText({ fg = yellow, bg = bg0 }),
    ErrorMsg { fg = colors.white, bg = colors.error, gui = styles.bold },
    VertSplit({ fg = yellow, bg = bg2 }),
    Folded({ fg = yellow, bg = bg2, gui = styles.italic_strings }),
    FoldColumn({ fg = gray, bg = bg1 }),
    SignColumn({ bg = sign_column }),
    IncSearch({ fg = hls_cursor, bg = bg0, gui = styles.inverse }),
    LineNr({ fg = fg4, bg = number_column }),
    CursorLineNr({ fg = magenta, bg = bg1, gui = styles.bold }),
    MatchParen({ gui = styles.inverse }),
    ModeMsg({ LushJSXRedBold }),
    MoreMsg({ LushJSXYellowBold }),
    NonText({ LushJSXBg2 }),
    Normal({ fg = fg0, bg = background }),
    NormalNC({ fg = fg1, bg = bg1 }),
    Pmenu({ fg = fg1, bg = bg2 }),
    PmenuSel({ fg = bg2, bg = blue, gui = styles.bold }),
    PmenuSbar({ bg = bg2 }),
    PmenuThumb({ bg = bg4 }),
    Question({ LushJSXOrangeBold }),
    QuickFixLine({ fg = colors.black, bg = yellow, gui = styles.bold }),
    Search({ bg = hls_highlight, gui = styles.bold }),
    SpecialKey({ LushJSXFg4 }),
    SpellRare({ LushJSXOrangeUnderline }),
    SpellBad({ LushJSXRedUnderline }),
    StatusLine({ fg = bg2, bg = fg1 }),
    StatusLineNC({ fg = bg1, bg = fg4 }),
    TabLineFill({ fg = fg4, bg = yellow, gui = styles.invert_tabline }),
    TabLine({ fg = fg4, bg = green, gui = styles.invert_tabline }),
    TabLineSel({ fg = fg4, bg = purple, gui = styles.invert_tabline }),
    Title({ LushJSXOrangeBold }),
    Visual({ bg = colors.neutral_yellow.mix(hsl(bg0), 50) }),
    VisualNOS({ bg = colors.neutral_yellow.mix(hsl(bg0), 66) }),
    -- WarningMsg {LushJSXRedBold},
    WildMenu({ fg = fg2, bg = hsl(green).mix(hsl(fg0), 50), gui = styles.bold }),
    Constant({ LushJSXGreen }),
    Special({ fg = special_string_fg, bg = special_string_bg, gui = special_string_gui }),
    String({
      fg = improved_strings_fg,
      bg = improved_strings_bg,
      gui = improved_strings_gui,
    }),
    Character({ LushJSXGreen }),
    Number({ fg = fg0, bg = bg2 }),
    Boolean({ LushJSXOrangeBold }),
    Float({ LushJSXFg0 }),
    Identifier({ LushJSXGreen }),
    Function({ LushJsxPurpleItalicBold }),
    Statement({ LushJSXOrangeBold }),
    Conditional({ LushJSXOrangeItalicBold }),
    Repeat({ LushJSXOrangeItalicBold }),
    Label({ LushJSXMagentaBold }),
    Exception({ LushJSXRedItalicBold }),
    Keyword({ LushJSXRed }),
    Operator({ fg = orange, bg = bg2, gui = styles.bold }),
    PreProc({ LushJSXRed }),
    Include({ LushJSXRedBold }),
    Define({ LushJSXRed }),
    Macro({ LushJSXRed }),
    PreCondit({ LushJSXRed }),
    Type({ fg = blue, bg = bg4 }),
    StorageClass({ LushJSXRed }),
    Structure({ LushJSXBlueBold }),
    Typedef({ LushJSXBlueBold }),
    SpecialChar({ LushJSXGreenBold }),
    Tag({ LushJSXAquaBold }),
    Delimiter({ fg = red, gui = styles.bold }),
    Comment({ fg = gray, gui = styles.italic_comments }),
    Debug({ LushJSXRedItalicBold }),
    Underlined({ gui = styles.underline }),
    Bold({ gui = styles.bold }),
    Italic({ gui = styles.italic }),
    Ignore({ fg = gray }),
    Error({ fg = colors.error, gui = table_concat({ styles.bold, styles.undercurl }, ",") }),
    Todo({ gui = table_concat({ styles.bold, styles.italic }, ",") }),
    diffAdded({ bg = hsl(green).mix(hsl(bg0), 90) }),
    diffRemoved({ bg = hsl(gray).mix(hsl(bg0), 90) }),
    diffChanged({ bg = hsl(orange).mix(hsl(bg0), 90) }),
    -- diffFile({}),
    -- diffNewFile({}),
    -- diffLine({}),
    -- signature
    SignatureMarkText({ LushJSXBlueSign }),
    SignatureMarkerText({ LushJSXPurpleSign }),
    -- gitcommit
    gitcommitSelectedFile({ LushJSXGreen }),
    gitcommitDiscardedFile({ LushJSXGray }),
    -- checkhealth
    healthError({ fg = bg0, bg = colors.error, gui = styles.bold }),
    healthSuccess({ fg = bg0, bg = green }),
    healthWarning({ fg = bg0, bg = yellow }),
    --- Lsp
    LspDiagnosticsDefaultError({ LushJSXErrorSign }),
    LspDiagnosticsDefaultWarning({ LushJSXWarningSign }),
    LspDiagnosticsDefaultInformation({ LushJSXBlueSign }),
    LspDiagnosticsDefaultHint({ LushJSXOrangeSign }),
    -- TS
    LspDiagnosticsSignError({ LushJSXErrorSign }),
    LspDiagnosticsSignWarning({ LushJSXWarningSign }),
    LspDiagnosticsSignInformation({ LushJSXBlueSign }),
    LspDiagnosticsSignHint({ LushJSXOrangeSign }),
    -- TS
    TSTag({ LushJSXAquaBold }),
    TSTagDelimiter({ Delimiter }),
  }
end)

return base_group

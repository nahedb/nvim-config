-- Project Hail Mary colorscheme for Neovim
-- Inspired by Andy Weir's "Project Hail Mary"
--   Background: deep space black-blue
--   Astrophage:  amber/gold  — control flow keywords (if/for/while/switch)
--   Rocky:       cyan/teal   — functions, methods, function keywords (function/async/await)
--   Grace:       coral/rose  — return, throw, yield  (Ryland trying to get home)
--   Earth:       soft green  — strings
--   Nebula:      purple      — types, classes, import/export
--   Starlight:   warm orange — numbers, constants

local p = {
  -- Backgrounds
  bg       = "#0d0f18",
  bg1      = "#131520",
  bg2      = "#1a1d2e",
  bg3      = "#20243a",
  border   = "#2a2f4a",

  -- Foreground
  fg       = "#cdd6f4",
  fg_dim   = "#7c85b0",
  comment  = "#454c6e",

  -- Astrophage (amber/gold) — keywords
  astrophage     = "#f7b731",
  astrophage_dim = "#c48f1e",

  -- Rocky (cyan) — functions
  rocky     = "#4fc3f7",
  rocky_dim = "#1e88e5",

  -- Earth (green) — strings
  earth     = "#a5d6a7",
  earth_dim = "#66bb6a",

  -- Nebula (purple) — types
  nebula     = "#ce93d8",
  nebula_dim = "#9c27b0",

  -- Starlight (orange) — numbers/constants
  starlight = "#ffb74d",

  -- Grace (coral/rose) — return, throw, yield  (trying to get home)
  grace = "#f28b82",

  -- Variable (periwinkle blue) — local vars, parameters
  variable = "#a8bcd8",

  -- Teal — operators
  teal = "#80cbc4",

  -- Status
  error   = "#f38ba8",
  warning = "#ffa94d",
  info    = "#89dceb",
  hint    = "#a6e3a1",

  -- Git
  git_add = "#a6e3a1",
  git_chg = "#89dceb",
  git_del = "#f38ba8",

  -- Selection
  cursor_line = "#171a2b",
  selection   = "#252a45",
  visual      = "#1f2640",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
vim.o.background = "dark"
vim.g.colors_name = "hail-mary"

-- ── Editor chrome ──────────────────────────────────────────────────────────
hi("Normal",       { fg = p.fg,         bg = p.bg })
hi("NormalFloat",  { fg = p.fg,         bg = p.bg1 })
hi("FloatBorder",  { fg = p.border,     bg = p.bg1 })
hi("NormalNC",     { fg = p.fg_dim,     bg = p.bg })
hi("Cursor",       { fg = p.bg,         bg = p.astrophage })
hi("CursorLine",   { bg = p.cursor_line })
hi("CursorLineNr", { fg = p.astrophage, bold = true })
hi("LineNr",       { fg = p.comment })
hi("SignColumn",   { fg = p.comment,    bg = p.bg })
hi("ColorColumn",  { bg = p.bg1 })
hi("VertSplit",    { fg = p.border,     bg = p.bg })
hi("WinSeparator", { fg = p.border,     bg = p.bg })
hi("StatusLine",   { fg = p.fg,         bg = p.bg2 })
hi("StatusLineNC", { fg = p.fg_dim,     bg = p.bg1 })

hi("TabLine",      { fg = p.fg_dim,     bg = p.bg1 })
hi("TabLineFill",  { fg = p.fg_dim,     bg = p.bg })
hi("TabLineSel",   { fg = p.astrophage, bg = p.bg2, bold = true })

hi("Pmenu",        { fg = p.fg,         bg = p.bg2 })
hi("PmenuSel",     { fg = p.bg,         bg = p.rocky })
hi("PmenuSbar",    { bg = p.bg3 })
hi("PmenuThumb",   { bg = p.border })

hi("Search",       { fg = p.bg,  bg = p.astrophage })
hi("IncSearch",    { fg = p.bg,  bg = p.starlight })
hi("CurSearch",    { fg = p.bg,  bg = p.starlight })
hi("Visual",       { bg = p.visual })
hi("VisualNOS",    { bg = p.visual })

hi("MatchParen",   { fg = p.astrophage, bold = true, underline = true })
hi("Folded",       { fg = p.fg_dim,     bg = p.bg2 })
hi("FoldColumn",   { fg = p.comment,    bg = p.bg })
hi("EndOfBuffer",  { fg = p.bg })
hi("NonText",      { fg = p.border })
hi("SpecialKey",   { fg = p.border })
hi("Whitespace",   { fg = p.border })
hi("Directory",    { fg = p.rocky })
hi("Title",        { fg = p.astrophage, bold = true })
hi("Question",     { fg = p.earth })
hi("MoreMsg",      { fg = p.earth })
hi("ModeMsg",      { fg = p.astrophage })
hi("ErrorMsg",     { fg = p.error })
hi("WarningMsg",   { fg = p.warning })

-- ── Syntax ─────────────────────────────────────────────────────────────────
hi("Comment",       { fg = p.comment,  italic = true })
hi("Constant",      { fg = p.starlight })
hi("String",        { fg = p.earth })
hi("Character",     { fg = p.earth })
hi("Number",        { fg = p.starlight })
hi("Boolean",       { fg = p.astrophage })
hi("Float",         { fg = p.starlight })
hi("Identifier",    { fg = p.fg })
hi("Function",      { fg = p.rocky })
hi("Statement",     { fg = p.astrophage, bold = true })
hi("Conditional",   { fg = p.astrophage })
hi("Repeat",        { fg = p.astrophage })
hi("Label",         { fg = p.astrophage })
hi("Operator",      { fg = p.teal })
hi("Keyword",       { fg = p.astrophage, bold = true })
hi("Exception",     { fg = p.error })
hi("PreProc",       { fg = p.nebula })
hi("Include",       { fg = p.nebula })
hi("Define",        { fg = p.nebula })
hi("Macro",         { fg = p.nebula })
hi("PreCondit",     { fg = p.nebula })
hi("Type",          { fg = p.teal })
hi("StorageClass",  { fg = p.astrophage })
hi("Structure",     { fg = p.teal })
hi("Typedef",       { fg = p.teal })
hi("Special",       { fg = p.teal })
hi("SpecialChar",   { fg = p.teal })
hi("Tag",           { fg = p.rocky })
hi("Delimiter",     { fg = p.fg_dim })
hi("SpecialComment",{ fg = p.teal,    italic = true })
hi("Debug",         { fg = p.warning })
hi("Underlined",    { underline = true })
hi("Ignore",        { fg = p.comment })
hi("Error",         { fg = p.error,   bold = true })
hi("Todo",          { fg = p.bg,      bg = p.astrophage, bold = true })

-- ── Diagnostics ────────────────────────────────────────────────────────────
hi("DiagnosticError",            { fg = p.error })
hi("DiagnosticWarn",             { fg = p.warning })
hi("DiagnosticInfo",             { fg = p.info })
hi("DiagnosticHint",             { fg = p.hint })
hi("DiagnosticVirtualTextError", { fg = p.error,   bg = p.bg1, italic = true })
hi("DiagnosticVirtualTextWarn",  { fg = p.warning, bg = p.bg1, italic = true })
hi("DiagnosticVirtualTextInfo",  { fg = p.info,    bg = p.bg1, italic = true })
hi("DiagnosticVirtualTextHint",  { fg = p.hint,    bg = p.bg1, italic = true })
hi("DiagnosticUnderlineError",   { sp = p.error,   undercurl = true })
hi("DiagnosticUnderlineWarn",    { sp = p.warning, undercurl = true })
hi("DiagnosticUnderlineInfo",    { sp = p.info,    undercurl = true })
hi("DiagnosticUnderlineHint",    { sp = p.hint,    undercurl = true })
hi("DiagnosticSignError",        { fg = p.error })
hi("DiagnosticSignWarn",         { fg = p.warning })
hi("DiagnosticSignInfo",         { fg = p.info })
hi("DiagnosticSignHint",         { fg = p.hint })

-- ── Git signs ──────────────────────────────────────────────────────────────
hi("GitSignsAdd",    { fg = p.git_add })
hi("GitSignsChange", { fg = p.git_chg })
hi("GitSignsDelete", { fg = p.git_del })

-- ── Telescope ──────────────────────────────────────────────────────────────
hi("TelescopeNormal",         { fg = p.fg,        bg = p.bg1 })
hi("TelescopeBorder",         { fg = p.border,    bg = p.bg1 })
hi("TelescopePromptNormal",   { fg = p.fg,        bg = p.bg2 })
hi("TelescopePromptBorder",   { fg = p.rocky,     bg = p.bg2 })
hi("TelescopePromptTitle",    { fg = p.bg,        bg = p.rocky,     bold = true })
hi("TelescopePreviewTitle",   { fg = p.bg,        bg = p.astrophage, bold = true })
hi("TelescopeResultsTitle",   { fg = p.bg,        bg = p.nebula,    bold = true })
hi("TelescopeSelection",      { bg = p.selection })
hi("TelescopeSelectionCaret", { fg = p.astrophage })
hi("TelescopeMatching",       { fg = p.astrophage, bold = true })

-- ── Neo-tree ───────────────────────────────────────────────────────────────
hi("NeoTreeNormal",        { fg = p.fg,         bg = p.bg1 })
hi("NeoTreeNormalNC",      { fg = p.fg_dim,     bg = p.bg1 })
hi("NeoTreeEndOfBuffer",   { fg = p.bg1,        bg = p.bg1 })
hi("NeoTreeRootName",      { fg = p.astrophage, bold = true })
hi("NeoTreeFileName",      { fg = p.fg })
hi("NeoTreeDirectoryName", { fg = p.rocky })
hi("NeoTreeDirectoryIcon", { fg = p.rocky })
hi("NeoTreeGitAdded",      { fg = p.git_add })
hi("NeoTreeGitModified",   { fg = p.git_chg })
hi("NeoTreeGitDeleted",    { fg = p.git_del })

-- ── Dashboard ──────────────────────────────────────────────────────────────
hi("DashboardHeader",   { fg = p.rocky })
hi("DashboardFooter",   { fg = p.astrophage_dim, italic = true })
hi("DashboardIcon",     { fg = p.astrophage })
hi("DashboardKey",      { fg = p.astrophage,     bold = true })
hi("DashboardDesc",     { fg = p.fg_dim })
hi("DashboardShortCut", { fg = p.teal })

-- ── Which-key ──────────────────────────────────────────────────────────────
hi("WhichKey",      { fg = p.astrophage })
hi("WhichKeyGroup", { fg = p.rocky })
hi("WhichKeyDesc",  { fg = p.fg })
hi("WhichKeyBorder",{ fg = p.border })
hi("WhichKeyFloat", { bg = p.bg1 })

-- ── Treesitter ─────────────────────────────────────────────────────────────
hi("@comment",             { link = "Comment" })
hi("@keyword",             { link = "Keyword" })           -- amber: const/let/var + fallback
hi("@keyword.conditional", { fg = p.astrophage })           -- amber: if/else/switch/case
hi("@keyword.repeat",      { fg = p.astrophage })           -- amber: for/while/do
hi("@keyword.function",    { fg = p.nebula, bold = true })  -- purple: function/async
hi("@keyword.coroutine",   { fg = p.nebula })               -- purple: await (some parsers)
hi("@keyword.return",      { fg = p.grace, bold = true })   -- coral: return
hi("@keyword.exception",   { fg = p.grace })                -- coral: throw/try/catch
hi("@keyword.operator",    { fg = p.teal })                 -- teal:  typeof/instanceof/in
hi("@keyword.import",      { fg = p.nebula })               -- purple: import/export/from
hi("@function",            { link = "Function" })
hi("@function.builtin",    { fg = p.rocky, italic = true })
hi("@function.method",     { fg = p.rocky })
hi("@function.method.call",{ fg = p.rocky })
hi("@variable",            { fg = p.variable })
hi("@variable.builtin",    { fg = p.starlight, italic = true })
hi("@variable.parameter",  { fg = p.variable })
hi("@variable.member",     { fg = p.variable })
hi("@string",              { link = "String" })
hi("@string.escape",       { fg = p.teal })
hi("@number",              { link = "Number" })
hi("@float",               { link = "Float" })
hi("@boolean",             { link = "Boolean" })
hi("@constant",            { fg = p.starlight })
hi("@constant.builtin",    { fg = p.starlight, bold = true })
hi("@type",                { fg = p.teal })
hi("@type.builtin",        { fg = p.teal, italic = true })
hi("@namespace",           { fg = p.nebula })
hi("@module",              { fg = p.nebula })
hi("@property",            { fg = p.fg })
hi("@punctuation",         { fg = p.fg_dim })
hi("@punctuation.bracket", { fg = p.fg_dim })
hi("@punctuation.delimiter",{ fg = p.fg_dim })
hi("@tag",                 { fg = p.rocky })
hi("@tag.attribute",       { fg = p.earth })
hi("@tag.delimiter",       { fg = p.fg_dim })
hi("@operator",            { link = "Operator" })
hi("@constructor",         { fg = p.nebula })

-- ── LSP semantic tokens ────────────────────────────────────────────────────
-- Types — all type identifiers (imports, references, declarations) use cyan
hi("@lsp.type.class",          { fg = p.teal })
hi("@lsp.type.type",           { fg = p.teal })   -- type aliases: `type Foo = ...`
hi("@lsp.type.typeParameter",  { fg = p.teal })   -- generics: <T>
hi("@lsp.type.interface",      { fg = p.teal })
hi("@lsp.type.struct",         { fg = p.teal })
hi("@lsp.type.enum",           { fg = p.nebula })
hi("@lsp.type.enumMember",     { fg = p.starlight })
hi("@lsp.type.namespace",      { fg = p.nebula })

-- Functions / methods
hi("@lsp.type.function",   { link = "Function" })
hi("@lsp.type.method",     { fg = p.rocky })

-- Variables & parameters — cover base type AND common typemod combos
-- (typemod groups don't inherit from type groups in Neovim's LSP token system)
hi("@lsp.type.variable",                    { fg = p.variable })
hi("@lsp.type.parameter",                   { fg = p.variable })
hi("@lsp.type.property",                    { fg = p.variable })
hi("@lsp.typemod.variable.local",           { fg = p.variable })
hi("@lsp.typemod.variable.declaration",     { fg = p.variable })
hi("@lsp.typemod.variable.readonly",        { fg = p.variable })
hi("@lsp.typemod.variable.defaultLibrary",  { fg = p.variable })
hi("@lsp.typemod.parameter.declaration",    { fg = p.variable })
hi("@lsp.typemod.property.declaration",     { fg = p.variable })

-- Other
-- @lsp.type.keyword intentionally not defined — OmniSharp (C#) sends all
-- keywords under one flat type, which would collapse return/async/using etc.
-- to amber. Leaving it undefined lets treesitter @keyword.* groups handle
-- differentiation consistently across TypeScript and C#.
hi("@lsp.type.string",     { link = "String" })
hi("@lsp.type.number",     { link = "Number" })
hi("@lsp.type.operator",   { link = "Operator" })
hi("@lsp.mod.readonly",    { fg = p.variable })     -- keep same as variable, not starlight
hi("@lsp.mod.deprecated",  { fg = p.comment, strikethrough = true })

-- ── Indent blankline ───────────────────────────────────────────────────────
hi("IblIndent", { fg = p.bg3 })
hi("IblScope",  { fg = p.border })

-- ── nvim-notify ────────────────────────────────────────────────────────────
for _, level in ipairs({ "ERROR", "WARN", "INFO", "DEBUG", "TRACE" }) do
  local color = ({ ERROR = p.error, WARN = p.warning, INFO = p.info, DEBUG = p.comment, TRACE = p.nebula })[level]
  hi("Notify" .. level .. "Border", { fg = color })
  hi("Notify" .. level .. "Icon",   { fg = color })
  hi("Notify" .. level .. "Title",  { fg = color, bold = true })
  hi("Notify" .. level .. "Body",   { link = "Normal" })
end

-- ── Bufferline ─────────────────────────────────────────────────────────────
hi("BufferlineFill",               { bg = p.bg })
hi("BufferlineBackground",         { fg = p.fg_dim,    bg = p.bg1 })
hi("BufferlineBufferSelected",     { fg = p.astrophage, bg = p.bg2, bold = true })
hi("BufferlineBufferVisible",      { fg = p.fg_dim,    bg = p.bg1 })
hi("BufferlineIndicatorSelected",  { fg = p.astrophage, bg = p.bg2 })
hi("BufferlineSeparator",          { fg = p.bg,        bg = p.bg1 })
hi("BufferlineSeparatorSelected",  { fg = p.bg,        bg = p.bg2 })
hi("BufferlineTab",                { fg = p.fg_dim,    bg = p.bg })
hi("BufferlineTabSelected",        { fg = p.astrophage, bg = p.bg2, bold = true })
hi("BufferlineTabClose",           { fg = p.error,     bg = p.bg })
hi("BufferlineDiagnostic",         { bg = p.bg1 })
hi("BufferlineDiagnosticSelected", { bg = p.bg2 })
hi("BufferlineError",              { fg = p.error,     bg = p.bg1 })
hi("BufferlineErrorSelected",      { fg = p.error,     bg = p.bg2, bold = true })
hi("BufferlineWarning",            { fg = p.warning,   bg = p.bg1 })
hi("BufferlineWarningSelected",    { fg = p.warning,   bg = p.bg2, bold = true })

-- ── Blink.cmp ──────────────────────────────────────────────────────────────
hi("BlinkCmpMenu",            { fg = p.fg,         bg = p.bg2 })
hi("BlinkCmpMenuBorder",      { fg = p.border,     bg = p.bg2 })
hi("BlinkCmpMenuSelection",   { fg = p.bg,         bg = p.rocky })
hi("BlinkCmpLabel",           { fg = p.fg })
hi("BlinkCmpLabelMatch",      { fg = p.astrophage, bold = true })
hi("BlinkCmpKind",            { fg = p.teal })
hi("BlinkCmpKindFunction",    { fg = p.rocky })
hi("BlinkCmpKindMethod",      { fg = p.rocky })
hi("BlinkCmpKindClass",       { fg = p.nebula })
hi("BlinkCmpKindInterface",   { fg = p.teal })
hi("BlinkCmpKindKeyword",     { fg = p.astrophage })
hi("BlinkCmpKindVariable",    { fg = p.fg })
hi("BlinkCmpKindText",        { fg = p.earth })
hi("BlinkCmpKindSnippet",     { fg = p.starlight })

-- expose palette for other modules (lualine, etc.)
vim.g.hail_mary_palette = p

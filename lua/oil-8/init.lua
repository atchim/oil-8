local default_config = {integration = {illuminate = true, indent_blankline = true, leap = true, mini = {indentscope = true}, neo_tree = true, treesitter = true}, terminal_colors = false}
local _local_1_ = vim
local _local_2_ = _local_1_["api"]
local hi = _local_2_["nvim_set_hl"]
local fn_2a = _local_1_["fn"]
local g = _local_1_["g"]
local opt = _local_1_["opt"]
local tbl_deep_extend = _local_1_["tbl_deep_extend"]
local function setup(_3fconfig)
  assert(("dark" == (opt.background):get()), "oil-8: 'dark' `background` not set")
  assert((opt.termguicolors):get(), "oil-8: 'termguicolors' not set")
  vim.cmd("hi clear")
  if fn_2a.exists("syntax") then
    vim.cmd("syntax reset")
  else
  end
  g.colors_name = "oil-8"
  for name_2_auto, args_3_auto in pairs({Added = {fg = "#4eb332"}, Boolean = {fg = "#fab98a"}, Changed = {fg = "#b25c1f"}, Character = {fg = "#6ceaa7"}, ColorColumn = {bg = "#292449"}, Comment = {fg = "#a77d72"}, Conceal = {fg = "#413aa1", italic = true}, Constant = {fg = "#f38f5e"}, CurSearch = {link = "IncSearch"}, Cursor = {reverse = true}, CursorColumn = {bg = "#1c1b34"}, CursorLine = {link = "CursorColumn"}, CursorLineNr = {bold = true, fg = "#a77d72"}, Delimiter = {bold = true, fg = "#2d9f84"}, DiagnosticError = {fg = "#aa3c55"}, DiagnosticHint = {fg = "#4eb332"}, DiagnosticInfo = {fg = "#bbbd28"}, DiagnosticUnderlineError = {sp = "#aa3c55", underline = true}, DiagnosticUnderlineHint = {sp = "#4eb332", underline = true}, DiagnosticUnderlineInfo = {sp = "#bbbd28", underline = true}, DiagnosticUnderlineWarn = {sp = "#b25c1f", underline = true}, DiagnosticWarn = {fg = "#b25c1f"}, DiffAdd = {bg = "#31452b"}, DiffChange = {bg = "#4b3a30"}, DiffDelete = {bg = "#622d2d"}, DiffText = {bg = "#606c09", bold = true}, Directory = {fg = "#966ef2"}, Error = {bold = true, fg = "#f35e7c", reverse = true}, ErrorMsg = {bold = true, fg = "#f35e7c"}, Float = {fg = "#bcec6a"}, FloatBorder = {link = "WinSeparator"}, FloatFooter = {fg = "#2d9f84"}, FoldColumn = {link = "LineNr"}, Folded = {bg = "#292449", bold = true, fg = "#8c607b"}, Function = {link = "Identifier"}, Identifier = {fg = "#54b7e8"}, Ignore = {}, IncSearch = {bg = "#3e2187", bold = true}, Label = {fg = "#dd9ffe"}, LineNr = {fg = "#8c607b"}, MatchParen = {bg = "#1b5c4d", bold = true, fg = "#58e9ca", italic = true}, ModeMsg = {bold = true, fg = "#e1e0c4"}, MoreMsg = {bold = true, fg = "#72db5e"}, NonText = {bold = true, fg = "#5f4c73"}, Normal = {bg = "#171629", fg = "#e1e0c4"}, NormalFloat = {bg = "#1c1b34"}, Number = {fg = "#d4e05c"}, Operator = {link = "Special"}, Pmenu = {bg = "#1c1b34", fg = "#a77d72"}, PmenuSBar = {bg = "#292449"}, PmenuSel = {bg = "#5f4c73"}, PmenuThumb = {link = "PmenuSel"}, Preproc = {fg = "#f35e7c"}, Question = {bold = true, fg = "#d4e05c"}, QuickFixLine = {bold = true, fg = "#58e9ca"}, Removed = {fg = "#aa3c55"}, Search = {bg = "#606c09", bold = true}, SignColumn = {link = "LineNr"}, Special = {fg = "#58e9ca"}, SpecialKey = {fg = "#58e9ca", italic = true}, SpellBad = {italic = true, sp = "#b25c1f", undercurl = true}, SpellCap = {italic = true, sp = "#b22ab7", undercurl = true}, SpellLocal = {italic = true, sp = "#bbbd28", undercurl = true}, SpellRare = {italic = true, sp = "#b25c1f", undercurl = true}, Statement = {fg = "#e557cd"}, StatusLine = {bg = "#292449", bold = true, fg = "#a77d72"}, StatusLineNC = {bg = "#1c1b34", bold = true, fg = "#8c607b"}, String = {fg = "#72db5e"}, TabLineSel = {link = "StatusLine"}, Tag = {fg = "#dd9ffe"}, Title = {bold = true, fg = "#58e9ca"}, Todo = {bold = true, fg = "#966ef2", reverse = true}, Type = {fg = "#966ef2"}, Underlined = {underline = true}, Visual = {bg = "#5f4c73", bold = true}, WarningMsg = {bold = true, fg = "#f38f5e"}, WildMenu = {bg = "#5f4c73", bold = true, fg = "#bdab87"}, WinBar = {link = "StatusLine"}, WinBarNC = {link = "StatusLineNC"}, WinSeparator = {bg = "#292449", fg = "#5f4c73"}, diffAdded = {fg = "#72db5e"}, diffChanged = {fg = "#f38f5e"}, diffFile = {link = "Comment"}, diffLine = {fg = "#e557cd"}, diffRemoved = {fg = "#f35e7c"}, diffSubname = {fg = "#966ef2"}, htmlEndTag = {link = "htmlTag"}, htmlTag = {link = "Delimiter"}}) do
    hi(0, name_2_auto, args_3_auto)
  end
  local config
  local _4_
  if (nil ~= _3fconfig) then
    _4_ = _3fconfig
  else
    _4_ = {}
  end
  config = tbl_deep_extend("keep", _4_, default_config)
  if config.terminal_colors then
    for name, color in pairs({terminal_color_0 = "#171629", terminal_color_1 = "#aa3c55", terminal_color_10 = "#72db5e", terminal_color_11 = "#d4e05c", terminal_color_12 = "#54b7e8", terminal_color_13 = "#e557cd", terminal_color_14 = "#58e9ca", terminal_color_15 = "#e1e0c4", terminal_color_2 = "#4eb332", terminal_color_3 = "#bbbd28", terminal_color_4 = "#367ba6", terminal_color_5 = "#b22ab7", terminal_color_6 = "#2d9f84", terminal_color_7 = "#bdab87", terminal_color_8 = "#5f4c73", terminal_color_9 = "#f35e7c"}) do
      g[name] = color
    end
  else
  end
  if config.integration then
    if config.integration.illuminate then
      for name_2_auto, args_3_auto in pairs({IlluminatedWordRead = {bg = "#3e2187"}, IlluminatedWordText = {bg = "#024c67"}, IlluminatedWordWrite = {bg = "#592a5f"}}) do
        hi(0, name_2_auto, args_3_auto)
      end
    else
    end
    if config.integration.indent_blankline then
      for name_2_auto, args_3_auto in pairs({IblIndent = {fg = "#292449"}, IblScope = {fg = "#5f4c73"}}) do
        hi(0, name_2_auto, args_3_auto)
      end
    else
    end
    if config.integration.leap then
      for name_2_auto, args_3_auto in pairs({LeapLabelPrimary = {bg = "#bcec6a", bold = true, fg = "#171629"}, LeapLabelSecondary = {bg = "#dd9ffe", bold = true, fg = "#171629"}, LeapMatch = {link = "Search"}}) do
        hi(0, name_2_auto, args_3_auto)
      end
    else
    end
    if config.integration.mini then
      if config.integration.mini.indentscope then
        for name_2_auto, args_3_auto in pairs({MiniIndentscopeSymbol = {fg = "#5f4c73"}}) do
          hi(0, name_2_auto, args_3_auto)
        end
      else
      end
    else
    end
    if config.integration.neo_tree then
      for name_2_auto, args_3_auto in pairs({NeoTreeCursorLine = {bg = "#292449"}, NeoTreeDimText = {link = "NonText"}, NeoTreeDotfile = {fg = "#5f4c73"}, NeoTreeFileStats = {link = "NeoTreeDotfile"}, NeoTreeFileStatsHeader = {bold = true, fg = "#966ef2"}, NeoTreeGitAdded = {fg = "#72db5e"}, NeoTreeGitConflict = {bold = true, fg = "#f35e7c"}, NeoTreeGitDeleted = {fg = "#aa3c55"}, NeoTreeGitModified = {fg = "#d4e05c"}, NeoTreeGitUntracked = {fg = "#f38f5e"}, NeoTreeMessage = {link = "NeoTreeDotfile"}, NeoTreeNormal = {bg = "#1c1b34"}, NeoTreeNormalNC = {link = "NeoTreeNormal"}, NeoTreeRootName = {bold = true, fg = "#e557cd"}, NeoTreeTitleBar = {bg = "#5f4c73", bold = true, fg = "#e1e0c4"}, NeoTreeWinSeparator = {bg = "#1c1b34", fg = "#5f4c73"}}) do
        hi(0, name_2_auto, args_3_auto)
      end
    else
    end
    if config.integration.treesitter then
      for name_2_auto, args_3_auto in pairs({["@attribute.builtin"] = {fg = "#fe7c8d"}, ["@comment.documentation"] = {fg = "#bdab87"}, ["@comment.error"] = {bold = true, fg = "#f35e7c", reverse = true}, ["@comment.note"] = {bold = true, fg = "#58e9ca", reverse = true}, ["@comment.warning"] = {bold = true, fg = "#f38f5e", reverse = true}, ["@constant.builtin"] = {link = "Boolean"}, ["@constant.macro"] = {fg = "#fe7c8d"}, ["@constructor"] = {link = "@punctuation"}, ["@function.macro"] = {fg = "#f35e7c"}, ["@keyword.conditional.ternary"] = {link = "Operator"}, ["@keyword.directive"] = {link = "Preproc"}, ["@keyword.export"] = {link = "@keyword.return"}, ["@keyword.operator"] = {link = "Operator"}, ["@keyword.return"] = {fg = "#fc83c5"}, ["@markup.link"] = {fg = "#54b7e8", underline = true}, ["@markup.link.label"] = {fg = "#a4b6fe", underline = true}, ["@markup.link.url"] = {fg = "#84cfdd", underline = true}, ["@markup.link.vimdoc"] = {fg = "#fc83c5", underline = true}, ["@markup.list"] = {link = "Delimiter"}, ["@markup.list.checked"] = {fg = "#72db5e"}, ["@markup.list.unchecked"] = {fg = "#bdab87"}, ["@markup.quote"] = {fg = "#6ceaa7"}, ["@markup.raw"] = {fg = "#fab98a"}, ["@string.documentation"] = {fg = "#6ceaa7"}, ["@string.regex"] = {fg = "#6ceaa7"}, ["@string.regexp"] = {link = "@string.regex"}, ["@string.special.url"] = {fg = "#58e9ca", underline = true}, ["@tag"] = {link = "Type"}, ["@tag.attribute"] = {link = "@variable.member"}, ["@tag.builtin"] = {link = "@type.builtin"}, ["@tag.delimiter"] = {link = "htmlTag"}, ["@type.builtin"] = {fg = "#dd9ffe"}, ["@variable"] = {fg = "#a4b6fe"}, ["@variable.builtin"] = {fg = "#84cfdd"}, ["@variable.member"] = {link = "Identifier"}}) do
        hi(0, name_2_auto, args_3_auto)
      end
      return nil
    else
      return nil
    end
  else
    return nil
  end
end
return {setup = setup}

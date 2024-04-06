local default_config = {integrations = {enabled = true, neo_tree = true, treesitter = true}, terminal_colors = false}
local _local_1_ = vim
local _local_2_ = _local_1_["api"]
local hi = _local_2_["nvim_set_hl"]
local cmd = _local_1_["cmd"]
local fn_2a = _local_1_["fn"]
local g = _local_1_["g"]
local o = _local_1_["opt"]
local tbl_deep_extend = _local_1_["tbl_deep_extend"]
local function setup(_3fconfig)
  assert((o.termguicolors):get(), "oil-8: 'termguicolors' not set")
  cmd("hi clear")
  if fn_2a.exists("syntax") then
    cmd("syntax reset")
  else
  end
  g.colors_name = "oil-8"
  for name_2_auto, args_3_auto in pairs({Added = {fg = "#4eb332"}, Changed = {fg = "#b25c1f"}, Character = {link = "String"}, ColorColumn = {bg = "#2b2649"}, Comment = {fg = "#dccead"}, Conceal = {fg = "#645178", italic = true}, Constant = {fg = "#f38f5e"}, CurSearch = {link = "IncSearch"}, Cursor = {reverse = true}, CursorColumn = {bg = "#1a1a30"}, CursorLine = {link = "CursorColumn"}, CursorLineNr = {bold = true, fg = "#c0ac87"}, Delimiter = {bold = true, fg = "#2d9f84"}, DiagnosticError = {fg = "#aa3c55"}, DiagnosticHint = {fg = "#4eb332"}, DiagnosticInfo = {fg = "#bbbd28"}, DiagnosticUnderlineError = {sp = "#aa3c55", underline = true}, DiagnosticUnderlineHint = {sp = "#4eb332", underline = true}, DiagnosticUnderlineInfo = {sp = "#bbbd28", underline = true}, DiagnosticUnderlineWarn = {sp = "#b25c1f", underline = true}, DiagnosticWarn = {fg = "#b25c1f"}, DiffAdd = {bg = "#31452b"}, DiffChange = {bg = "#4b3a30"}, DiffDelete = {bg = "#622d2d"}, DiffText = {bg = "#606c09", bold = true}, Directory = {fg = "#966ef2"}, Error = {bold = true, fg = "#f35e7c", reverse = true}, ErrorMsg = {bold = true, fg = "#f35e7c"}, FloatBorder = {link = "WinSeparator"}, FloatFooter = {fg = "#2d9f84"}, FoldColumn = {link = "LineNr"}, Folded = {bg = "#645178", bold = true, fg = "#c0ac87"}, Function = {link = "Identifier"}, Identifier = {fg = "#54b7e8"}, Ignore = {}, IncSearch = {bg = "#3e2187", bold = true}, LineNr = {fg = "#a57889"}, MatchParen = {bg = "#1b5c4d", bold = true, fg = "#58e9ca", italic = true}, ModeMsg = {bold = true, fg = "#f4e8d8"}, MoreMsg = {bold = true, fg = "#7de967"}, NonText = {bold = true, fg = "#645178"}, Normal = {bg = "#131220", fg = "#f4e8d8"}, NormalFloat = {bg = "#1a1a30"}, Number = {fg = "#e6f35e"}, Operator = {link = "Special"}, Pmenu = {bg = "#1a1a30", fg = "#c0ac87"}, PmenuSBar = {bg = "#2b2649"}, PmenuSel = {bg = "#645178"}, PmenuThumb = {link = "PmenuSel"}, Preproc = {fg = "#f35e7c"}, Question = {bold = true, fg = "#e6f35e"}, QuickFixLine = {bold = true, fg = "#58e9ca"}, Removed = {fg = "#aa3c55"}, Search = {bg = "#606c09", bold = true}, SignColumn = {link = "LineNr"}, Special = {fg = "#58e9ca"}, SpecialKey = {fg = "#58e9ca", italic = true}, SpellBad = {italic = true, sp = "#b25c1f", undercurl = true}, SpellCap = {italic = true, sp = "#dd31c9", undercurl = true}, SpellLocal = {italic = true, sp = "#bbbd28", undercurl = true}, SpellRare = {italic = true, sp = "#b25c1f", undercurl = true}, Statement = {fg = "#e557cd"}, StatusLine = {bg = "#2b2649", bold = true, fg = "#c0ac87"}, StatusLineNC = {bg = "#1a1a30", bold = true, fg = "#a57889"}, String = {fg = "#7de967"}, TabLineSel = {link = "StatusLine"}, Tag = {link = "Type"}, Title = {bold = true, fg = "#58e9ca"}, Todo = {bold = true, fg = "#966ef2", reverse = true}, Type = {fg = "#966ef2"}, Underlined = {underline = true}, Visual = {bg = "#645178", bold = true}, WarningMsg = {bold = true, fg = "#f38f5e"}, WildMenu = {bg = "#645178", bold = true, fg = "#dccead"}, WinBar = {link = "StatusLine"}, WinBarNC = {link = "StatusLineNC"}, WinSeparator = {bg = "#2b2649", fg = "#645178"}, diffAdded = {fg = "#7de967"}, diffChanged = {fg = "#f38f5e"}, diffFile = {link = "Comment"}, diffLine = {fg = "#e557cd"}, diffRemoved = {fg = "#f35e7c"}, diffSubname = {fg = "#966ef2"}, htmlEndTag = {link = "htmlTag"}, htmlTag = {link = "Delimiter"}}) do
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
    for name, color in pairs({terminal_color_0 = "#131220", terminal_color_1 = "#aa3c55", terminal_color_10 = "#7de967", terminal_color_11 = "#e6f35e", terminal_color_12 = "#54b7e8", terminal_color_13 = "#e557cd", terminal_color_14 = "#58e9ca", terminal_color_15 = "#f4e8d8", terminal_color_2 = "#4eb332", terminal_color_3 = "#bbbd28", terminal_color_4 = "#367ba6", terminal_color_5 = "#dd31c9", terminal_color_6 = "#2d9f84", terminal_color_7 = "#dccead", terminal_color_8 = "#645178", terminal_color_9 = "#f35e7c"}) do
      g[name] = color
    end
  else
  end
  if config.integrations.enabled then
    if config.integrations.neo_tree then
      for name_2_auto, args_3_auto in pairs({NeoTreeCursorLine = {bg = "#2b2649"}, NeoTreeDimText = {link = "NonText"}, NeoTreeDotfile = {fg = "#645178"}, NeoTreeFileStats = {link = "NeoTreeDotfile"}, NeoTreeFileStatsHeader = {bold = true, fg = "#966ef2"}, NeoTreeGitAdded = {fg = "#7de967"}, NeoTreeGitConflict = {bold = true, fg = "#f35e7c"}, NeoTreeGitDeleted = {fg = "#aa3c55"}, NeoTreeGitModified = {fg = "#e6f35e"}, NeoTreeGitUntracked = {fg = "#f38f5e"}, NeoTreeMessage = {link = "NeoTreeDotfile"}, NeoTreeNormal = {bg = "#1a1a30"}, NeoTreeNormalNC = {link = "NeoTreeNormal"}, NeoTreeRootName = {bold = true, fg = "#e557cd"}, NeoTreeTitleBar = {bg = "#645178", bold = true, fg = "#f4e8d8"}, NeoTreeWinSeparator = {bg = "#1a1a30", fg = "#645178"}}) do
        hi(0, name_2_auto, args_3_auto)
      end
    else
    end
    if config.integrations.treesitter then
      for name_2_auto, args_3_auto in pairs({["@comment.error"] = {bold = true, fg = "#f35e7c", reverse = true}, ["@comment.note"] = {bold = true, fg = "#58e9ca", reverse = true}, ["@comment.warning"] = {bold = true, fg = "#f38f5e", reverse = true}, ["@tag.attribute"] = {link = "@variable.member"}, ["@tag.delimiter"] = {link = "htmlTag"}, ["@variable"] = {fg = "#93bed2"}, ["@variable.member"] = {link = "Identifier"}}) do
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

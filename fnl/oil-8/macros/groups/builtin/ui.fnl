(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{; Background & Foreground
    :Normal {:fg (color :bone) :bg (color :eerie-black)}

    ; Cursor
    :Cursor {:reverse true}
    :CursorColumn {:bg (color :dark-gunmetal)}
    :CursorLine {:link :CursorColumn}

    ; Floating Window
    :FloatBorder {:link :WinSeparator}
    :FloatFooter {:fg (color :jungle-green)}
    :NormalFloat {:bg (color :dark-gunmetal)}

    ; Fold
    :FoldColumn {:link :LineNr}
    :Folded {:fg (color :burnished-brown) :bg (color :cyber-grape) :bold true}

    ; Line Number & Sign Column
    :CursorLineNr {:fg (color :burnished-brown) :bold true}
    :LineNr {:fg (color :antique-fuchsia)}
    :SignColumn {:link :LineNr}

    ; Menu
    :Pmenu {:fg (color :burnished-brown) :bg (color :dark-gunmetal)}
    :PmenuSBar {:bg (color :space-cadet)}
    :PmenuSel {:bg (color :cyber-grape)}
    :PmenuThumb {:link :PmenuSel}
    :WildMenu {:fg (color :ecru) :bold true :bg (color :cyber-grape)}

    ; Status & Tab Lines
    :StatusLine
    {:fg (color :burnished-brown) :bg (color :space-cadet) :bold true}
    :StatusLineNC
    {:fg (color :antique-fuchsia) :bg (color :dark-gunmetal) :bold true}
    :TabLineSel {:link :StatusLine}

    ; Window
    :WinBar {:link :StatusLine}
    :WinBarNC {:link :StatusLineNC}
    :WinSeparator {:fg (color :cyber-grape) :bg (color :space-cadet)}

    ; Misc
    :ColorColumn {:bg (color :space-cadet)}
    :NonText {:fg (color :cyber-grape) :bold true}
    :Visual {:bg (color :cyber-grape) :bold true}}}

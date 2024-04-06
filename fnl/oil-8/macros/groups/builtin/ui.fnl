(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{; Background & Foreground
    :Normal {:fg (color :eggshell) :bg (color :chinese-black)}

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
    :Folded {:fg (color :ecru) :bg (color :cyber-grape) :bold true}

    ; Line Number & Sign Column
    :CursorLineNr {:fg (color :ecru) :bold true}
    :LineNr {:fg (color :mountbatten-pink)}
    :SignColumn {:link :LineNr}

    ; Menu
    :Pmenu {:fg (color :ecru) :bg (color :dark-gunmetal)}
    :PmenuSBar {:bg (color :space-cadet)}
    :PmenuSel {:bg (color :cyber-grape)}
    :PmenuThumb {:link :PmenuSel}
    :WildMenu {:fg (color :desert-sand) :bold true :bg (color :cyber-grape)}

    ; Status & Tab Lines
    :StatusLine {:fg (color :ecru) :bg (color :space-cadet) :bold true}
    :StatusLineNC
    {:fg (color :mountbatten-pink) :bg (color :dark-gunmetal) :bold true}
    :TabLineSel {:link :StatusLine}

    ; Window
    :WinBar {:link :StatusLine}
    :WinBarNC {:link :StatusLineNC}
    :WinSeparator {:fg (color :cyber-grape) :bg (color :space-cadet)}

    ; Misc
    :ColorColumn {:bg (color :space-cadet)}
    :NonText {:fg (color :cyber-grape) :bold true}
    :Visual {:bg (color :cyber-grape) :bold true}}}

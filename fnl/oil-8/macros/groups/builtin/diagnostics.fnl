(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{; Diagnostics
    :DiagnosticError {:fg (color :english-red)}
    :DiagnosticHint {:fg (color :green-ryb)}
    :DiagnosticInfo {:fg (color :acid-green)}
    :DiagnosticWarn {:fg (color :dirty-brown)}

    ; Underlined
    :DiagnosticUnderlineError {:sp (color :english-red) :underline true}
    :DiagnosticUnderlineHint {:sp (color :green-ryb) :underline true}
    :DiagnosticUnderlineInfo {:sp (color :acid-green) :underline true}
    :DiagnosticUnderlineWarn {:sp (color :dirty-brown) :underline true}}}

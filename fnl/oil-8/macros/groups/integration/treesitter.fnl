(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{; Comment
    "@comment.documentation" {:fg (color :ecru)}
    "@comment.error" {:fg (color :brink-pink) :bold true :reverse true}
    "@comment.note" {:fg (color :turquoise) :bold true :reverse true}
    "@comment.warning" {:fg (color :big-foot-feet) :bold true :reverse true}

    ; Constant
    "@constant.builtin" {:link :Boolean}
    "@constant.macro" {:fg (color :tulip)}

    ; Keyword
    "@keyword.conditional.ternary" {:link :Operator}
    "@keyword.directive" {:link :Preproc}
    "@keyword.export" {:link "@keyword.return"}
    "@keyword.operator" {:link :Operator}
    "@keyword.return" {:fg (color :persian-pink)}

    ; Markup
    "@markup.link" {:fg (color :blue-jeans) :underline true}
    "@markup.link.vimdoc" {:fg (color :persian-pink) :underline true}
    "@markup.link.label" {:fg (color :baby-blue-eyes) :underline true}
    "@markup.link.url" {:fg (color :middle-blue) :underline true}
    "@markup.list" {:link :Delimiter}
    "@markup.list.checked" {:fg (color :mantis)}
    "@markup.list.unchecked" {:fg (color :ecru)}
    "@markup.quote" {:fg (color :medium_aquamarine)}
    "@markup.raw" {:fg (color :macaroni_and_cheese)}

    ; String
    "@string.documentation" {:fg (color :medium-aquamarine)}
    "@string.regex" {:fg (color :medium-aquamarine)}
    "@string.regexp" {:link "@string.regex"}
    "@string.special.url" {:fg (color :turquoise) :underline true}

    ; Tag
    "@tag" {:link :Type}
    "@tag.attribute" {:link "@variable.member"}
    "@tag.builtin" {:link "@type.builtin"}
    "@tag.delimiter" {:link :htmlTag}

    ; Variables
    "@variable" {:fg (color :baby-blue-eyes)}
    "@variable.builtin" {:fg (color :middle-blue)}
    "@variable.member" {:link :Identifier}

    ; Misc
    "@attribute.builtin" {:fg (color :tulip)}
    "@constructor" {:link "@punctuation"}
    "@function.macro" {:fg (color :brink-pink)}
    "@type.builtin" {:fg (color :mauve)}}}
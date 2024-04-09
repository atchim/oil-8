(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{; Comment Annotations
    "@comment.error" {:fg (color :brink-pink) :bold true :reverse true}
    "@comment.note" {:fg (color :turquoise) :bold true :reverse true}
    "@comment.warning" {:fg (color :big-foot-feet) :bold true :reverse true}

    ; Constant
    "@constant.builtin" {:link :Boolean}
    "@constant.macro" {:fg (color :tulip)}

    ; String
    "@string.documentation" {:fg (color :medium-aquamarine)}
    "@string.regex" {:fg (color :medium-aquamarine)}
    "@string.regexp" {:link "@string.regex"}

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
    "@constructor" {:link "@punctuation"}
    "@keyword.export" {:fg (color :persian-pink)}
    "@type.builtin" {:fg (color :pale-violet)}}}
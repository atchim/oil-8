(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{; Comment Annotations
    "@comment.error" {:fg (color :brink-pink) :bold true :reverse true}
    "@comment.note" {:fg (color :turquoise) :bold true :reverse true}
    "@comment.warning" {:fg (color :big-foot-feet) :bold true :reverse true}

    ; Tag
    "@tag.attribute" {:link "@variable.member"}
    "@tag.delimiter" {:link :htmlTag}

    ; Variables
    "@variable" {:fg (color :dark-sky-blue)}
    "@variable.member" {:link :Identifier}}}

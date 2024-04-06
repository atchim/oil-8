(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{:Character {:link :String}
    :Comment {:fg (color :desert-sand)}
    :Constant {:fg (color :big-foot-feet)}
    :Delimiter {:fg (color :jungle-green) :bold true}
    :Error {:fg (color :brink-pink) :bold true :reverse true}
    :Function {:link :Identifier}
    :Identifier {:fg (color :blue-jeans)}
    :Number {:fg (color :corn)}
    :Operator {:link :Special}
    :Preproc {:fg (color :brink-pink)}
    :Special {:fg (color :turquoise)}
    :Statement {:fg (color :light-deep-pink)}
    :String {:fg (color :pastel-green)}
    :Tag {:link :Type}
    :Todo {:fg (color :violets-are-blue) :bold true :reverse true}
    :Type {:fg (color :violets-are-blue)}}}

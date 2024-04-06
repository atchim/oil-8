(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{:CurSearch {:link :IncSearch}
    :IncSearch {:bg (color :pixie-powder) :bold true}
    :MatchParen
    { :fg (color :turquoise)
      :bg (color :brunswick-green)
      :bold true
      :italic true}
    :Search {:bg (color :bronze-yellow) :bold true}}}

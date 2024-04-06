(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{; Line
    :Added {:fg (color :green-ryb)}
    :Changed {:fg (color :dirty-brown)}
    :Removed {:fg (color :english-red)}

    ; Mode
    :DiffAdd {:bg (color :kombu-green)}
    :DiffChange {:bg (color :dark-lava)}
    :DiffDelete {:bg (color :caput-mortuum)}
    :DiffText {:bg (color :bronze-yellow) :bold true}

    ; File
    :diffAdded {:fg (color :pastel-green)}
    :diffChanged {:fg (color :big-foot-feet)}
    :diffFile {:link :Comment}
    :diffLine {:fg (color :light-deep-pink)}
    :diffRemoved {:fg (color :brink-pink)}
    :diffSubname {:fg (color :violets-are-blue)}}}

(import-macros {: color} :fnl.oil-8.macros.palette)

{ :groups
  #{; Git
    :NeoTreeGitAdded {:fg (color :pastel-green)}
    :NeoTreeGitConflict {:fg (color :brink-pink) :bold true}
    :NeoTreeGitDeleted {:fg (color :english-red)}
    :NeoTreeGitModified {:fg (color :corn)}
    :NeoTreeGitUntracked {:fg (color :big-foot-feet)}

    ; Labels
    :NeoTreeDotfile {:fg (color :cyber-grape)}
    :NeoTreeFileStats {:link :NeoTreeDotfile}
    :NeoTreeFileStatsHeader {:fg (color :violets-are-blue) :bold true}
    :NeoTreeMessage {:link :NeoTreeDotfile}
    :NeoTreeRootName {:fg (color :light-deep-pink) :bold true}
    :NeoTreeTitleBar
    {:fg (color :eggshell) :bg (color :cyber-grape) :bold true}

    ; UI
    :NeoTreeCursorLine {:bg (color :space-cadet)}
    :NeoTreeDimText {:link :NonText}
    :NeoTreeNormal {:bg (color :dark-gunmetal)}
    :NeoTreeNormalNC {:link :NeoTreeNormal}
    :NeoTreeWinSeparator
    {:fg (color :cyber-grape) :bg (color :dark-gunmetal)}}}

(import-macros
  {:groups builtin-groups} :fnl.oil-8.macros.groups.builtin
  {:variables terminal-variables} :fnl.oil-8.macros.groups.builtin.terminal
  {:groups neo-tree-groups} :fnl.oil-8.macros.groups.integrations.neo-tree
  {:groups treesitter-groups} :fnl.oil-8.macros.groups.integrations.treesitter
  {: or-default} :soupmacs.soupmacs)

(local default-config
  { :terminal_colors false
    :integrations {:enabled true :neo_tree true :treesitter true}})

(local
  { :api {:nvim_set_hl hi}
    : cmd
    :fn fn*
    : g
    :opt o
    :tbl_deep_extend tbl-deep-extend}
  vim)

(fn setup [?config]
  (assert (o.termguicolors:get) "oil-8: 'termguicolors' not set")
  (cmd "hi clear")
  (when (fn*.exists :syntax) (cmd "syntax reset"))
  (set g.colors_name :oil-8)

  (macro hi-groups [groups]
    `(each [name# args# (pairs ,groups)] (hi 0 name# args#)))

  (hi-groups (builtin-groups))

  (let [config (tbl-deep-extend :keep (or-default ?config {}) default-config)]
    (when config.terminal_colors
      (each [name color (pairs (terminal-variables))] (tset g name color)))
    (when config.integrations.enabled
      (when config.integrations.neo_tree (hi-groups (neo-tree-groups)))
      (when config.integrations.treesitter (hi-groups (treesitter-groups))))))

{: setup}

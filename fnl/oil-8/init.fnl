(import-macros
  {:groups builtin-groups} :fnl.oil-8.macros.groups.builtin
  {:variables terminal-variables} :fnl.oil-8.macros.groups.builtin.terminal
  {:groups illuminate-groups} :fnl.oil-8.macros.groups.integration.illuminate
  {:groups ibl-groups} :fnl.oil-8.macros.groups.integration.indent-blankline
  {:groups leap-groups} :fnl.oil-8.macros.groups.integration.leap
  {:groups mini-indentscope-groups}
  :fnl.oil-8.macros.groups.integration.mini.indentscope
  {:groups neo-tree-groups} :fnl.oil-8.macros.groups.integration.neo-tree
  {:groups treesitter-groups} :fnl.oil-8.macros.groups.integration.treesitter
  {: or-default} :soupmacs.soupmacs)

(local default-config
  { :terminal_colors false
    :integration
    { :illuminate true
      :indent_blankline true
      :leap true
      :mini {:indentscope true}
      :neo_tree true
      :treesitter true}})

(local
  {:api {:nvim_set_hl hi} :fn fn* : g : opt :tbl_deep_extend tbl-deep-extend}
  vim)

(fn setup [?config]
  (assert (= :dark (opt.background:get)) "oil-8: 'dark' `background` not set")
  (assert (opt.termguicolors:get) "oil-8: 'termguicolors' not set")
  (vim.cmd "hi clear")
  (when (fn*.exists :syntax) (vim.cmd "syntax reset"))
  (set g.colors_name :oil-8)

  (macro hi-groups [groups]
    `(each [name# args# (pairs ,groups)] (hi 0 name# args#)))

  (hi-groups (builtin-groups))

  (let [config (tbl-deep-extend :keep (or-default ?config {}) default-config)]
    (when config.terminal_colors
      (each [name color (pairs (terminal-variables))] (tset g name color)))
    (when config.integration
      (when config.integration.illuminate (hi-groups (illuminate-groups)))
      (when config.integration.indent_blankline (hi-groups (ibl-groups)))
      (when config.integration.leap (hi-groups (leap-groups)))
      (when config.integration.mini
        (when config.integration.mini.indentscope
          (hi-groups (mini-indentscope-groups))))
      (when config.integration.neo_tree (hi-groups (neo-tree-groups)))
      (when config.integration.treesitter (hi-groups (treesitter-groups))))))

{: setup}
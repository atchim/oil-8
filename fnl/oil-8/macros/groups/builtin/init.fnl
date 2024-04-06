(import-macros
  {:groups diagnostics-groups} :fnl.oil-8.macros.groups.builtin.diagnostics
  {:groups diff-groups} :fnl.oil-8.macros.groups.builtin.diff
  {:groups html-groups} :fnl.oil-8.macros.groups.builtin.html
  {:groups misc-groups} :fnl.oil-8.macros.groups.builtin.misc
  {:groups prompt-groups} :fnl.oil-8.macros.groups.builtin.prompt
  {:groups search-groups} :fnl.oil-8.macros.groups.builtin.search
  {:groups spell-groups} :fnl.oil-8.macros.groups.builtin.spell
  {:groups syntax-groups} :fnl.oil-8.macros.groups.builtin.syntax
  {:groups ui-groups} :fnl.oil-8.macros.groups.builtin.ui)

(fn groups []
  (let
    [ result {}
      builtin-groups
      [ (diagnostics-groups)
        (diff-groups)
        (html-groups)
        (misc-groups)
        (prompt-groups)
        (search-groups)
        (spell-groups)
        (syntax-groups)
        (ui-groups)]]
    (each [_ groups (ipairs builtin-groups)]
      (each [name args (pairs groups)] (tset result name args)))
    result))

{: groups}

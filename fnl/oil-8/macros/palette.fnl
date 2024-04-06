(import-macros {: assert-lazy} :soupmacs.soupmacs)
(local palette (require :fnl.oil-8.palette))

(fn color [kebab-name]
  (let [snake-name (kebab-name:gsub :%- :_)]
    (->
      (. palette snake-name)
      (assert-lazy
        #(.. "fnl.oil-8.macros.palette: invalid color name: " kebab-name)))))

{: color}

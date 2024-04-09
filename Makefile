define rec-wildcard
$(wildcard $1$2) $(foreach d,$(wildcard $1*),$(call rec-wildcard,$d/,$2))
endef

filter-out-having = $(foreach v,$(2),$(if $(findstring $(1),$(v)),,$(v)))

fnl-files = $(call rec-wildcard,fnl/,*.fnl)
fnl-files := $(call filter-out-having,macros,$(fnl-files))
lua-files = $(patsubst fnl/%.fnl,lua/%.lua,$(fnl-files))

.PHONY: all clean
all: $(lua-files)
clean: ; rm -fr lua

lua/%.lua: fnl/%.fnl
	@mkdir -p $(@D)
	fennel --compile $< > $@
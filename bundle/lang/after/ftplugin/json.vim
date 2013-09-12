"uncomment to enable folding of `{...}` and `[...]` blocks
"setlocal foldmethod=syntax
if has('conceal')
  setlocal conceallevel=0
endif
command -buffer Format %!python -m json.tool

function javascript#SelectFunction()
    call search("function", "bWc")
    call search("{", "Wc")
    normal v%V
endfunction

function! javascript#SetInclude()
  if &expandtab
    let &l:include = '^\s\{,' . &shiftwidth . "}['\\\"]\\zs[^'\\\"]*\\ze"
  else
    let &l:include = "^\s\{1}['\\\"]\\zs[^'\\\"]*\\ze"
  endif
endfunction

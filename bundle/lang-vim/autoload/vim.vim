function vim#SelectFunction()
    call search("^\s*function", "bWc")
    normal v%V
endfunction


" filter the current quickfix
function functions#global#GrepQuickFix(pat)
  if !exists("g:qfl")
    let g:qfl = getqflist()
  endif

  call setqflist(filter(getqflist(), "bufname(v:val['bufnr']) =~ a:pat || v:val['text'] =~ a:pat"))

endfunction

function functions#global#ResetQuickFix()
  try
    call setqflist(g:qfl)

  catch

  endtry

endfunction

" ===========================================================================

" cycle common words
function functions#global#Cycle()
  let words = [
    \ ["TRUE", "FALSE"],
    \ ["True", "False"],
    \ ["true", "false"],
    \ ["top", "right", "bottom", "left", "center"],
    \ ["none", "block"],
    \ ["first", "last"],
    \ ["||", "&&"],
    \ ["gif", "jpg", "png"]
    \ ]

  if exists("g:cycle_words")
    let words += g:cycle_words
  endif

  if exists("b:cycle_words")
    let words += b:cycle_words
  endif

  let current_word = expand("<cword>")
  let new_word = ""

  for pair in words
    for word in pair
      if current_word ==# word
        if index(pair, word) < len(pair) - 1
          let new_word = pair[index(pair, word) + 1]

        elseif index(pair, word) == len(pair) - 1
          let new_word = pair[0]

        endif

      endif

    endfor

  endfor

  if new_word != ""
    execute 'normal "_ciw' . new_word

  else
    return

  endif

endfunction

" ===========================================================================

" increment selected column of numbers
" TODO: use v:count
function functions#global#Incr()
  let a = line('.') - line("'<")
  let c = virtcol("'<")

  if a > 0
    execute 'normal! ' . c . '|' . a . "\<C-a>"

  endif

  normal `<

endfunction

" ===========================================================================

" saves all the visible windows if needed/possible
function functions#global#AutoSave()
  let this_window = winnr()

  windo if &buftype != "nofile" && expand('%') != '' && &modified | write | endif

  execute this_window . 'wincmd w'

endfunction

" ===========================================================================

" simplistic MRU
function functions#global#MRUComplete(ArgLead, CmdLine, CursorPos)
  let my_oldfiles = filter(copy(v:oldfiles), 'v:val =~ a:ArgLead')

  if len(my_oldfiles) > 16
    call remove(my_oldfiles, 17, len(my_oldfiles) - 1)

  endif

  return my_oldfiles

endfunction

function functions#global#MRU(command, arg)
  if a:command == "tabedit"
    execute a:command . " " . a:arg . "\|lcd %:p:h"

  else
    execute a:command . " " . a:arg

  endif

endfunction

" ===========================================================================

" wrapping :cnext/:cprevious and :lnext/:lprevious
" quick and dirty
function functions#global#WrapCommand(direction, prefix)
  if a:direction == "up"
    try
      execute a:prefix . "previous"

    catch /^Vim\%((\a\+)\)\=:E553/
      execute a:prefix . "last"

    catch /^Vim\%((\a\+)\)\=:E\%(776\|42\):/

    endtry

  elseif a:direction == "down"
    try
      execute a:prefix . "next"

    catch /^Vim\%((\a\+)\)\=:E553/
      execute a:prefix . "first"

    catch /^Vim\%((\a\+)\)\=:E\%(776\|42\):/

    endtry

  endif

endfunction

" ===========================================================================

" simplistic grep/ack/ag-based search/replace across project
function functions#global#Replace(search_pattern, replacement_pattern, argument)
  try
    silent execute 'lgrep! "\b' . a:search_pattern . '\b" ' . a:argument

    try
      silent lfirst|redraw!

      while 1
        execute "%s/" . a:search_pattern . "/" . a:replacement_pattern . "/ec"

        silent lnfile

      endwhile

    catch /^Vim\%((\a\+)\)\=:E\%(553\|42\):/

    endtry

  catch /^Vim\%((\a\+)\)\=:E480/
    echo "No match found"

  endtry

endfunction

" ===========================================================================

" from $VIMRUNTIME/ftplugin/python.vim
function functions#global#Custom_jump(motion) range
  let cnt = v:count1
  let save = @/

  mark '

  while cnt > 0
    silent! execute a:motion

    let cnt = cnt - 1

  endwhile

  call histdel('/', -1)

  let @/ = save

endfunction

" ===========================================================================

" tries to make <CR> a little smarter in insert mode:
" - expands {}, [], (), <tag></tag> 'correctly'
" - removes empty comment marker
" - more?
function functions#global#SmartEnter()
  " beware of the cmdline window
  if &buftype == "nofile"
    return "\<CR>"

  endif

  if getline(".") =~ '^\s*\(\*\|//\|#\|"\)\s*$'
    return "\<C-u>"

  endif

  let previous = getline(".")[col(".")-2]
  let next     = getline(".")[col(".")-1]

  if previous ==# "{"
    return functions#global#PairExpander(previous, "}", next)

  elseif previous ==# "["
    return functions#global#PairExpander(previous, "]", next)

  elseif previous ==# "("
    return functions#global#PairExpander(previous, ")", next)

  elseif previous ==# ">"
    return functions#global#TagExpander(next)

  else
    return "\<CR>"

  endif

endfunction

function functions#global#PairExpander(left, right, next)
  let pair_position = searchpairpos(a:left, "", a:right, "Wn")

  if a:next !=# a:right && pair_position[0] == 0
    return "\<CR>" . a:right . "\<C-o>==\<C-o>O"

  elseif a:next !=# a:right && pair_position[0] != 0 && indent(pair_position[0]) != indent(".")
    return "\<CR>" . a:right . "\<C-o>==\<C-o>O"

  elseif a:next ==# a:right
    return "\<CR>\<C-o>==\<C-o>O"

  else
    return "\<CR>"

  endif

endfunction

function functions#global#TagExpander(next)
  if a:next ==# "<" && getline(".")[col(".")] ==# "/"
    if getline(".")[searchpos("<", "bnW")[1]] ==# "/" || getline(".")[searchpos("<", "bnW")[1]] !=# getline(".")[col(".") + 1]
      return "\<CR>"

    else
      return "\<CR>\<C-o>==\<C-o>O"

    endif

  else
    return "\<CR>"

  endif

endfunction
" ===========================================================================

" return a representation of the selected text
" suitable for use as a search pattern
function functions#global#GetVisualSelection()
  let old_reg = @v

  normal! gv"vy

  let raw_search = @v
  let @v = old_reg

  return substitute(escape(raw_search, '\/.*$^~[]'), "\n", '\\n', "g")

endfunction

" ===========================================================================

" DOS to UNIX encoding
function functions#global#ToUnix()
  let b:winview = winsaveview()

  silent update
  silent e ++ff=dos
  silent setlocal ff=unix
  silent w

  if(exists('b:winview'))
    call winrestview(b:winview)

  endif

endfunction

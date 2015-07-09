" make list-like commands more intuitive
function! custom#Return()
    let cmdline = getcmdline()
    if getcmdtype() == "/" || getcmdtype() == "?"
      if b:direction == "b"
        return "\<CR>:silent let v:searchforward = 0\<CR>"
      else
        return "\<CR>:silent let v:searchforward = 1\<CR>"
      endif
    else
      if cmdline =~ '\C^ls'
        " like :ls but prompts for a buffer command
        return "\<CR>:b"
      elseif cmdline =~ '/#$'
        " like :g//# but prompts for a command
        return "\<CR>:"
      elseif cmdline =~ '\v\C^(dli|il)'
        " like :dlist or :ilist but prompts for a count for :djump or :ijump
        return "\<CR>:" . cmdline[0] . "jump  " . split(cmdline, " ")[1] . "\<S-Left>\<Left>"
      elseif cmdline =~ '\v\C^(cli|lli)'
        " like :clist or :llist but prompts for an error/location number
        return "\<CR>:silent " . repeat(cmdline[0], 2) . "\<Space>"
      elseif cmdline =~ '\C^old'
        " like :oldfiles but prompts for an old file to edit
        return "\<CR>:edit #<"
      else
        return "\<CR>"
      endif
    endif
endfunction

" ===========================================================================

" increment selected column of numbers
function! custom#Incr(vcount)
  let a = (line('.') - line("'<")) + a:vcount
  let c = virtcol("'<")
  if a > 0
    execute 'normal! ' . c . '|' . a . "\<C-a>"
  endif
  normal `<
endfunction

" ===========================================================================

" saves all the visible windows if needed/possible
function! custom#AutoSave()
  let this_window = winnr()
  windo if &buftype != "nofile" && expand('%') != '' && &modified | write | endif
  execute this_window . 'wincmd w'
endfunction

" ===========================================================================

" simplistic MRU
function! custom#MRUComplete(ArgLead, CmdLine, CursorPos)
  let my_oldfiles = filter(copy(v:oldfiles), 'v:val =~ a:ArgLead')
  return my_oldfiles
endfunction

function! custom#MRU(command, arg)
  if a:command == "tabedit"
    execute a:command . " " . a:arg . "\|lcd %:p:h"
  else
    execute a:command . " " . a:arg
  endif
endfunction

" ===========================================================================

" adapted from $VIMRUNTIME/ftplugin/python.vim
function! custom#CustomJump(motion) range
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
function! custom#SmartEnter()
  " specific case: beware of the cmdline window
  if &buftype ==# "quickfix"
    return "\<CR>"
  endif
  " specific case: <CR><CR> to get out of commenting
  if getline(".") =~ '^\s*\(\*\|//\|#\|"\)\s*$'
    return "\<C-u>"
  endif
  " generic case
  let previous = getline(".")[col(".")-2]
  let next     = getline(".")[col(".")-1]
  if previous ==# "{"
    return custom#PairExpander(previous, "}", next)
  elseif previous ==# "["
    return custom#PairExpander(previous, "]", next)
  elseif previous ==# "("
    return custom#PairExpander(previous, ")", next)
  elseif previous ==# ">"
    return custom#TagExpander(next)
  else
    return "\<CR>"
  endif
endfunction

function! custom#PairExpander(left, right, next)
  let pair_position = []
  if a:left == "["
    let pair_position = searchpairpos('\' . a:left, "", '\' . a:right, "Wn")
  else
    let pair_position = searchpairpos(a:left, "", a:right, "Wn")
  endif
  if a:next !=# a:right && pair_position[0] == 0
    return "\<CR>" . a:right . "\<C-o>==O"
  elseif a:next !=# a:right && pair_position[0] != 0 && indent(pair_position[0]) != indent(".")
    return "\<CR>" . a:right . "\<C-o>==O"
  elseif a:next ==# a:right
    return "\<CR>\<C-o>==O"
  else
    return "\<CR>"
  endif
endfunction

function! custom#TagExpander(next)
  let thisline = getline(".")
  if a:next ==# "<" && thisline[col(".")] ==# "/"
    if thisline[searchpos("<", "bnW")[1]] ==# "/" || thisline[searchpos("<", "bnW")[1]] !=# thisline[col(".") + 1]
      return "\<CR>"
    else
      return "\<CR>\<C-o>==O"
    endif
  else
    return "\<CR>"
  endif
endfunction

" ===========================================================================

" return a representation of the selected text
" suitable for use as a search pattern
function! custom#GetVisualSelection()
  let old_reg = @v
  normal! gv"vy
  let raw_search = @v
  let @v = old_reg
  return substitute(escape(raw_search, '\/.*$^~[]'), "\n", '\\n', "g")
endfunction

" ===========================================================================

" DOS to UNIX re-encoding
function! custom#ToUnix()
  let b:winview = winsaveview()
  silent update
  silent e ++ff=dos
  silent setlocal ff=unix
  silent w
  if(exists('b:winview'))
    call winrestview(b:winview)
  endif
endfunction

" ===========================================================================

" Trying to write a function! for managing tags
" ============================================
" when a tags file already exists, it is re-generated
" when there's no tags file, the user is asked what to do:
" * generate a tags file in the current directory
" * generate a tags file in the directory of the current file
" if no answer is given, nothing is done and we try to not
" bother the user again
function! custom#Tagit(bomb)
  update
  if a:bomb == 0
    if !exists("t:tagit_notags") && expand('%') != ''
      if len(tagfiles()) > 0
        let tags_location = fnamemodify(tagfiles()[0], ":p:h")
        call custom#GenerateTags(tags_location, 0)
      else
        let this_dir    = expand('%:p:h')
        let current_dir = getcwd()
        if this_dir == current_dir
          let user_choice = inputlist([
                \ 'Do you want to generate a tags file?',
                \ '1. In the working directory: ' . current_dir . '/tags'])
          if user_choice == 0
            let t:tagit_notags = 1
            return
          elseif user_choice == 1
            call custom#GenerateTags(current_dir, 0)
          endif
        elseif this_dir != current_dir
          let user_choice = inputlist([
                \ 'Where do you want to generate a tags file?',
                \ '1. In the working directory:             ' . current_dir . '/tags',
                \ '2. In the directory of the current file: ' . this_dir . '/tags'])
          if user_choice == 0
            let t:tagit_notags = 1
            return
          elseif user_choice == 1
            call custom#GenerateTags(current_dir, 0)
          elseif user_choice == 2
            call custom#GenerateTags(this_dir, 0)
          endif
        endif
      endif
    endif
  else
    if len(tagfiles()) > 0 && !exists("t:tagit_notags")
      call custom#GenerateTags(fnamemodify(tagfiles()[0], ":p:h"), 0)
    endif
  endif
endfunction

" the actual tag generation function
function! custom#GenerateTags(location, lang_only)
  let ctags_command = "/opt/local/bin/ctags -R --tag-relative=yes"
  if a:lang_only == 1
    let ctags_command .= " --languages=" . &filetype
  endif
  let g:tag = system("cd " . shellescape(a:location) . " && " . ctags_command . " -f tags .")
endfunction

" Trying to write a function for managing tags
" ============================================
" when a tags file already exists, it is re-generated
" when there's no tags file, the user is asked what to do:
" * generate a tags file in the current directory
" * generate a tags file in the directory of the current file
" if no answer is given, nothing is done and we try to not
" bother the user again
function functions#tags#Tagit()
  update
  if !exists("t:tagit_notags") && expand('%') != ''
    if len(tagfiles()) > 0
      let tags_location = fnamemodify(tagfiles()[0], ":p:h")
      call functions#tags#GenerateTags(tags_location, 0, 0)
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
          call functions#tags#GenerateTags(current_dir, 0, 0)
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
          call functions#tags#GenerateTags(current_dir, 0, 0)
        elseif user_choice == 2
          call functions#tags#GenerateTags(this_dir, 0, 0)
        endif
      endif
    endif
  endif
endfunction

" Force tags file generation
function functions#tags#Bombit(buffer_only)
  update
  if len(tagfiles()) > 0 && !exists("t:tagit_notags")
    call functions#tags#GenerateTags(fnamemodify(tagfiles()[0], ":p:h"), a:buffer_only, 0)
  endif
endfunction

" the actual tag generation function
function functions#tags#GenerateTags(location, buffer_only, lang_only)
  if a:buffer_only == 0
    let ctags_command = "ctags -R --tag-relative=yes --exclude=.git --exclude=.svn --exclude=\*.min.\*"
    if a:lang_only == 1
      let ctags_command .= " --languages=" . &filetype
    endif
    let tag = system("cd " . shellescape(a:location) . " && " . ctags_command . " -f tags .")
  elseif a:buffer_only == 1
    let ctags_command = "ctags -L <(echo " . expand('%') . ")"
    let tag = system("cd " . expand('%:p:h') . " && " . ctags_command . " -f .temptags .")
  endif
endfunction

" ===========================================================================

function functions#tags#BtagComplete(ArgLead, CmdLine, CursorPos)
  let temp_list = filter(taglist('/*' . a:ArgLead), 'v:val.filename == bufname("%")')
  if len(temp_list) > 0
    let return_list = []
    for item in temp_list
      if count(return_list, item.name) == 0
        call add(return_list, item.name)
      endif
    endfor
    return return_list
  endif
endfunction

" like :tag /foo but  the completion is limited to the current buffer
function functions#tags#Btag(arg)
  try
    execute "silent tag /" . a:arg
    try
      call delete(expand("%:p:h") . "/.temptags")
    catch
    endtry
  catch
    try
      execute "silent tag " . a:arg
      try
        call delete(expand("%:p:h") . "/.temptags")
      catch
      endtry
    catch
      echo "No tag " . a:arg . " found."
    endtry
  endtry
endfunction

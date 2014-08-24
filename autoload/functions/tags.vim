" Trying to write a function for managing tags
" ============================================
" when a tags file already exists, it is re-generated
" when there's no tags file, the user is asked what to do:
" * generate a tags file in the current directory
" * generate a tags file in the directory of the current file
" if no answer is given, nothing is done and we try to not
" bother the user again
function functions#tags#Tagit(bomb)
  update
  if a:bomb == 0
    if !exists("t:tagit_notags") && expand('%') != ''
      if len(tagfiles()) > 0
        let tags_location = fnamemodify(tagfiles()[0], ":p:h")
        call functions#tags#GenerateTags(tags_location, 0)
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
            call functions#tags#GenerateTags(current_dir, 0)
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
            call functions#tags#GenerateTags(current_dir, 0)
          elseif user_choice == 2
            call functions#tags#GenerateTags(this_dir, 0)
          endif
        endif
      endif
    endif
  else
    if len(tagfiles()) > 0 && !exists("t:tagit_notags")
      call functions#tags#GenerateTags(fnamemodify(tagfiles()[0], ":p:h"), 0)
    endif
  endif
endfunction

" the actual tag generation function
function functions#tags#GenerateTags(location, lang_only)
  let ctags_command = "ctags -R --tag-relative=yes --exclude=.git --exclude=.svn --exclude=\*.min.\*"
  if a:lang_only == 1
    let ctags_command .= " --languages=" . &filetype
  endif
  let tag = system("cd " . shellescape(a:location) . " && " . ctags_command . " -f tags .")
endfunction

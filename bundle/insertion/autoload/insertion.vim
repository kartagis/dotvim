function insertion#InsertIMG(...)
  if(a:0 > 0)
    let path = a:1

  else
    if(has("browse"))
      let path = browse('', 'Get image file', '.', '')

    else
      let path = input("\nGet image file:\n", expand(getcwd()."/"), "file")

    endif

  endif

  let image_attributes = substitute(system('identify -format %wx%h "' . path . '"'),'\n','','')

  if(path[0] == '/')
    let path = insertion#Absolute2Relative(path)

  endif

  let old_x = @x

  if &filetype == "html"
    let @x = substitute(image_attributes,'\([0-9]*\)x\([0-9]*\)','<img src="' . path . '" width="\1" height="\2" alt="" />','')

    normal "xp==$3h

    let @x = old_x

    startinsert

  elseif &filetype == "css"
    let @x = substitute(image_attributes,'\([0-9]*\)x\([0-9]*\)','background: transparent url(' . path . ') no-repeat scroll top left;\nwidth: \1px;\nheight: \2px;','')

    normal "xp3==

    let @x = old_x

  else
    return

  endif

endfunction

function insertion#Absolute2Relative(path)
  let pat  = a:path
  let cur  = getcwd() . '/'
  let lPat = strlen(pat)
  let lCur = strlen(cur)
  let i    = 0
  let beg  = 0

  while(i < lPat && i < lCur)
    if(pat[i] == cur[i])
      if(cur[i] == '/')
        let beg = i + 1

      endif

      let i = i + 1

      continue

    else
      break

    endif

  endwhile

  let rel = ''

  while(i < lCur)
    if(cur[i] == '/')
      let rel = rel . '../'

    endif

    let i = i + 1

  endwhile

  return rel.strpart(pat, beg)

endfunction

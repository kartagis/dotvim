" saves all the visible windows if needed/possible
function functions#AutoSave()
  let this_window = winnr()

  windo if &buftype != "nofile" && expand('%') != '' && &modified | write | endif
  " windo call functions#SmartUpdate()

  execute this_window . 'wincmd w'

endfunction

function functions#SmartUpdate()
  if &buftype != "nofile" && expand('%') != '' && &modified
    write

  endif

endfunction

" =======:===================================================================

" naive MRU
function functions#MRUComplete(ArgLead, CmdLine, CursorPos)
  let the_oldfiles = deepcopy(v:oldfiles)

  let my_oldfiles = filter(the_oldfiles, 'v:val =~ a:ArgLead')

  if len(my_oldfiles) > 16
    call remove(my_oldfiles, 17, len(my_oldfiles) - 1)

  endif

  return my_oldfiles

endfunction

function functions#MRU(command, arg)
  execute "" . a:command . " " . a:arg

endfunction

" ===========================================================================

" wrapping :cnext/:cprevious and :lnext/:lprevious
" quick and dirty
function functions#WrapCommand(direction)
  if a:direction == "up"
    try
      cprevious

    catch /^Vim\%((\a\+)\)\=:E553/
      clast

    endtry

  elseif a:direction == "down"
    try
      cnext

    catch /^Vim\%((\a\+)\)\=:E553/
      cfirst

    endtry

  endif

endfunction

" ===========================================================================

" simplistic search/replace across project
function functions#Replace(search_pattern, replacement_pattern, file_pattern)

  silent execute "lvimgrep " . a:search_pattern . " " . a:file_pattern

  try
    silent lfirst

    while 1
      execute "%s/" . a:search_pattern . "/" . a:replacement_pattern . "/ec"

      silent lnfile

    endwhile

  catch /^Vim\%((\a\+)\)\=:E\%(553\|42\):/

  endtry

endfunction

" ===========================================================================

" like :tag /foo but  the completion is limited to the current buffer
function functions#BtagComplete(ArgLead, CmdLine, CursorPos)
  " let temp_list = filter(taglist('/*' . a:ArgLead), 'v:val.filename == bufname("%")')
  let temp_list = taglist('/*' . a:ArgLead)

  if len(temp_list) > 0
    let return_list = []

    for item in temp_list
      call add(return_list, item.name)

    endfor

    return return_list

  endif

endfunction

function functions#Btag(arg)
  " keep it for later
  " let buf_list = filter(taglist('/*' . a:arg), 'v:val.filename == bufname("%")')
  " let name_list = filter(buf_list, 'v:val.name == "' . a:arg . '"')
  " normal gg
  " execute name_list[0].cmd
  try
    execute "silent tag /" . a:arg
    setlocal noai

  catch
    try
      execute "silent tag " . a:arg

    catch
      echo "No tag " . a:arg . " found."

    endtry

  endtry

endfunction

" ===========================================================================

" insert console.log("<cword>:", <cword>)
" under the current line
function functions#InsertLog()
  silent normal! yiw

  mark `

  silent normal! oconsole.log("":", ");
  silent normal! ``

endfunction

" ===========================================================================

" create JavaScript handler method
" above the current block;
function functions#InsertHandler()
  silent normal! $2B
  silent normal! yiw

  mark `

  silent normal! {
  silent normal! Ovar " = function(e) {};
  silent normal! O// do something

endfunction

" ===========================================================================

" from $VIMRUNTIME/ftplugin/python.vim
function functions#Custom_jump(motion) range
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
function functions#SmartEnter()
  " beware of the cmdline window
  if &buftype == "nofile"
    return "\<CR>"

  endif

  " I still have to decide if it's useful to me
  if getline(".") =~ '^\s*\(\*\|//\|#\|"\)\s*$'
    return "\<C-u>"

  endif

  let previous = getline(".")[col(".")-2]
  let next     = getline(".")[col(".")-1]

  if previous ==# "{"
    return functions#PairExpander(previous, "}", next)

  elseif previous ==# "["
    return functions#PairExpander(previous, "]", next)

  elseif previous ==# "("
    return functions#PairExpander(previous, ")", next)

  elseif previous ==# ">"
    return functions#TagExpander(next)

  else
    return "\<CR>"

  endif

endfunction

function functions#PairExpander(left, right, next)
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

function functions#TagExpander(next)
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

" Trying to write a function for managing tags
" ============================================
" when a tags file already exists, it is re-generated
" when there's no tags file, the user is asked what to do:
" * generate a tags file in the current directory
" * generate a tags file in the directory of the current file
" if no answer is given, nothing is done and we try to not
" bother the user again
function functions#Tagit()
  update

  if !exists("t:tagit_notags") && expand('%') != ''
    if len(tagfiles()) > 0
      let tags_location = fnamemodify(tagfiles()[0], ":p:h")

      call functions#GenerateTags(tags_location, 0, 0)

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
          call functions#GenerateTags(current_dir, 0, 0)

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
          call functions#GenerateTags(current_dir, 0, 0)

        elseif user_choice == 2
          call functions#GenerateTags(this_dir, 0, 0)

        endif

      endif

    endif

  endif

endfunction

" Force tags file generation
function functions#Bombit(buffer_only)
  update

  if len(tagfiles()) > 0 && !exists("t:tagit_notags")
    call functions#GenerateTags(fnamemodify(tagfiles()[0], ":p:h"), a:buffer_only, 1)

  endif

endfunction

" the actual tag generation function
function functions#GenerateTags(location, buffer_only, lang_only)
  if a:buffer_only == 0
    let ctags_command = "ctags -R --tag-relative=yes --exclude=.git --exclude=.svn --exclude=\*.min.\*"

    if a:lang_only == 1
      let ctags_command .= " --languages=" . &filetype

    endif

    let tag = system("cd " . shellescape(a:location) . " && " . ctags_command . " -f tags .")

  elseif a:buffer_only == 1
    let ctags_command = "ctags -L <(echo " . expand('%') . ")"

    let tag = system("cd " . shellescape(a:location) . " && " . ctags_command . " -f tags .")

  endif

endfunction

" ===========================================================================

" return a representation of the selected text
" suitable for use as a search pattern
function functions#GetVisualSelection()
  let old_reg = @v

  normal! gv"vy

  let raw_search = @v
  let @v = old_reg

  return substitute(escape(raw_search, '\/.*$^~[]'), "\n", '\\n', "g")

endfunction

" ===========================================================================

" use the width attribute of the current IMG
" to update the width attribute of the parent TD
function functions#UpdateWidth()
  silent normal! 0
  silent normal! /\vwidth\="/e
  silent normal! yi"
  silent normal! ?\vwidth\=""?e
  silent normal! P

endfunction

" ===========================================================================

" URLs pasted from Word or Powerpoint often end with a pesky newline
" this macro puts the URL in the href attribute
" of the next anchor
function functions#UpdateAnchor()
  mark '

  silent normal! ^
  silent normal! v$h
  silent normal! y
  silent normal! "_dd
  silent normal! /href
  silent normal! f"
  silent normal! vi"
  silent normal! "_dP

  silent normal ''

endfunction

" ===========================================================================

" DOS to UNIX encoding
function functions#ToUnix()
  mark `

  silent update
  silent e ++ff=dos
  silent setlocal ff=unix
  silent w

  silent ``

endfunction

" ===========================================================================

" normal characters --> HTML entities
function functions#Entities()
  mark `

  silent s/Á/\&Aacute;/e
  silent s/á/\&aacute;/e
  silent s/Â/\&Acirc;/e
  silent s/â/\&acirc;/e
  silent s/´/\&acute;/e
  silent s/Æ/\&AElig;/e
  silent s/æ/\&aelig;/e
  silent s/À/\&Agrave;/e
  silent s/à/\&agrave;/e
  silent s/ℵ/\&alefsym;/e
  silent s/Α/\&Alpha;/e
  silent s/α/\&alpha;/e
  silent s/∧/\&and;/e
  silent s/∠/\&ang;/e
  "silent s/'/\&apos;/e
  silent s/Å/\&Aring;/e
  silent s/å/\&aring;/e
  silent s/≈/\&asymp;/e
  silent s/Ã/\&Atilde;/e
  silent s/ã/\&atilde;/e
  silent s/Ä/\&Auml;/e
  silent s/ä/\&auml;/e
  silent s/„/\&bdquo;/e
  silent s/Β/\&Beta;/e
  silent s/β/\&beta;/e
  silent s/¦/\&brvbar;/e
  silent s/•/\&bull;/e
  silent s/∩/\&cap;/e
  silent s/Ç/\&Ccedil;/e
  silent s/ç/\&ccedil;/e
  silent s/¸/\&cedil;/e
  silent s/¢/\&cent;/e
  silent s/Χ/\&Chi;/e
  silent s/χ/\&chi;/e
  silent s/ˆ/\&circ;/e
  silent s/♣/\&clubs;/e
  silent s/≅/\&cong;/e
  silent s/©/\&copy;/e
  silent s/↵/\&crarr;/e
  silent s/∪/\&cup;/e
  silent s/¤/\&curren;/e
  silent s/†/\&dagger;/e
  silent s/‡/\&Dagger;/e
  silent s/↓/\&darr;/e
  silent s/⇓/\&dArr;/e
  silent s/°/\&deg;/e
  silent s/Δ/\&Delta;/e
  silent s/δ/\&delta;/e
  silent s/♦/\&diams;/e
  silent s/÷/\&divide;/e
  silent s/É/\&Eacute;/e
  silent s/é/\&eacute;/e
  silent s/Ê/\&Ecirc;/e
  silent s/ê/\&ecirc;/e
  silent s/È/\&Egrave;/e
  silent s/è/\&egrave;/e
  silent s/∅/\&empty;/e
  silent s/Ε/\&Epsilon;/e
  silent s/ε/\&epsilon;/e
  silent s/≡/\&equiv;/e
  silent s/Η/\&Eta;/e
  silent s/η/\&eta;/e
  silent s/Ð/\&ETH;/e
  silent s/ð/\&eth;/e
  silent s/Ë/\&Euml;/e
  silent s/ë/\&euml;/e
  silent s/€/\&euro;/e
  silent s/∃/\&exist;/e
  silent s/ƒ/\&fnof;/e
  silent s/∀/\&forall;/e
  silent s/½/\&frac12;/e
  silent s/¼/\&frac14;/e
  silent s/¾/\&frac34;/e
  silent s/Γ/\&Gamma;/e
  silent s/γ/\&gamma;/e
  silent s/≥/\&ge;/e
  silent s/↔/\&harr;/e
  silent s/⇔/\&hArr;/e
  silent s/♥/\&hearts;/e
  silent s/…/\&hellip;/e
  silent s/Í/\&Iacute;/e
  silent s/í/\&iacute;/e
  silent s/Î/\&Icirc;/e
  silent s/î/\&icirc;/e
  silent s/¡/\&iexcl;/e
  silent s/Ì/\&Igrave;/e
  silent s/ì/\&igrave;/e
  silent s/ℑ/\&image;/e
  silent s/∞/\&infin;/e
  silent s/∫/\&int;/e
  silent s/Ι/\&Iota;/e
  silent s/ι/\&iota;/e
  silent s/¿/\&iquest;/e
  silent s/∈/\&isin;/e
  silent s/Ï/\&Iuml;/e
  silent s/ï/\&iuml;/e
  silent s/Κ/\&Kappa;/e
  silent s/κ/\&kappa;/e
  silent s/Λ/\&Lambda;/e
  silent s/λ/\&lambda;/e
  silent s/«/\&laquo;/e
  silent s/←/\&larr;/e
  silent s/⇐/\&lArr;/e
  silent s/⌈/\&lceil;/e
  silent s/“/\&ldquo;/e
  silent s/≤/\&le;/e
  silent s/⌊/\&lfloor;/e
  silent s/∗/\&lowast;/e
  silent s/◊/\&loz;/e
  silent s/‹/\&lsaquo;/e
  silent s/‘/\&lsquo;/e
  silent s/¯/\&macr;/e
  silent s/—/\&mdash;/e
  silent s/µ/\&micro;/e
  silent s/·/\&middot;/e
  silent s/−/\&minus;/e
  silent s/Μ/\&Mu;/e
  silent s/μ/\&mu;/e
  silent s/∇/\&nabla;/e
  silent s/–/\&ndash;/e
  silent s/≠/\&ne;/e
  silent s/∋/\&ni;/e
  silent s/¬/\&not;/e
  silent s/∉/\&notin;/e
  silent s/⊄/\&nsub;/e
  silent s/Ñ/\&Ntilde;/e
  silent s/ñ/\&ntilde;/e
  silent s/Ν/\&Nu;/e
  silent s/ν/\&nu;/e
  silent s/Ó/\&Oacute;/e
  silent s/ó/\&oacute;/e
  silent s/Ô/\&Ocirc;/e
  silent s/ô/\&ocirc;/e
  silent s/Œ/\&OElig;/e
  silent s/œ/\&oelig;/e
  silent s/Ò/\&Ograve;/e
  silent s/ò/\&ograve;/e
  silent s/‾/\&oline;/e
  silent s/Ω/\&Omega;/e
  silent s/ω/\&omega;/e
  silent s/Ο/\&Omicron;/e
  silent s/ο/\&omicron;/e
  silent s/⊕/\&oplus;/e
  silent s/∨/\&or;/e
  silent s/ª/\&ordf;/e
  silent s/º/\&ordm;/e
  silent s/Ø/\&Oslash;/e
  silent s/ø/\&oslash;/e
  silent s/Õ/\&Otilde;/e
  silent s/õ/\&otilde;/e
  silent s/⊗/\&otimes;/e
  silent s/Ö/\&Ouml;/e
  silent s/ö/\&ouml;/e
  silent s/¶/\&para;/e
  silent s/∂/\&part;/e
  silent s/‰/\&permil;/e
  silent s/⊥/\&perp;/e
  silent s/Φ/\&Phi;/e
  silent s/φ/\&phi;/e
  silent s/Π/\&Pi;/e
  silent s/π/\&pi;/e
  silent s/ϖ/\&piv;/e
  silent s/±/\&plusmn;/e
  silent s/£/\&pound;/e
  silent s/′/\&prime;/e
  silent s/″/\&Prime;/e
  silent s/∏/\&prod;/e
  silent s/∝/\&prop;/e
  silent s/Ψ/\&Psi;/e
  silent s/ψ/\&psi;/e
  "silent s/"/\&quot;/e
  silent s/√/\&radic;/e
  silent s/»/\&raquo;/e
  silent s/→/\&rarr;/e
  silent s/⇒/\&rArr;/e
  silent s/⌉/\&rceil;/e
  silent s/”/\&rdquo;/e
  silent s/ℜ/\&real;/e
  silent s/®/\&reg;/e
  silent s/⌋/\&rfloor;/e
  silent s/Ρ/\&Rho;/e
  silent s/ρ/\&rho;/e
  silent s/›/\&rsaquo;/e
  silent s/’/\&rsquo;/e
  silent s/‚/\&sbquo;/e
  silent s/Š/\&Scaron;/e
  silent s/š/\&scaron;/e
  silent s/⋅/\&sdot;/e
  silent s/§/\&sect;/e
  silent s/Σ/\&Sigma;/e
  silent s/σ/\&sigma;/e
  silent s/ς/\&sigmaf;/e
  silent s/∼/\&sim;/e
  silent s/♠/\&spades;/e
  silent s/⊂/\&sub;/e
  silent s/⊆/\&sube;/e
  silent s/∑/\&sum;/e
  silent s/⊃/\&sup;/e
  silent s/¹/\&sup1;/e
  silent s/²/\&sup2;/e
  silent s/³/\&sup3;/e
  silent s/⊇/\&supe;/e
  silent s/ß/\&szlig;/e
  silent s/Τ/\&Tau;/e
  silent s/τ/\&tau;/e
  silent s/∴/\&there4;/e
  silent s/Θ/\&Theta;/e
  silent s/θ/\&theta;/e
  silent s/ϑ/\&thetasym;/e
  silent s/Þ/\&THORN;/e
  silent s/þ/\&thorn;/e
  silent s/˜/\&tilde;/e
  silent s/×/\&times;/e
  silent s/™/\&trade;/e
  silent s/Ú/\&Uacute;/e
  silent s/ú/\&uacute;/e
  silent s/↑/\&uarr;/e
  silent s/⇑/\&uArr;/e
  silent s/Û/\&Ucirc;/e
  silent s/û/\&ucirc;/e
  silent s/Ù/\&Ugrave;/e
  silent s/ù/\&ugrave;/e
  silent s/¨/\&uml;/e
  silent s/ϒ/\&upsih;/e
  silent s/Υ/\&Upsilon;/e
  silent s/υ/\&upsilon;/e
  silent s/Ü/\&Uuml;/e
  silent s/ü/\&uuml;/e
  silent s/℘/\&weierp;/e
  silent s/Ξ/\&Xi;/e
  silent s/ξ/\&xi;/e
  silent s/Ý/\&Yacute;/e
  silent s/ý/\&yacute;/e
  silent s/¥/\&yen;/e
  silent s/ÿ/\&yuml;/e
  silent s/Ÿ/\&Yuml;/e
  silent s/Ζ/\&Zeta;/e
  silent s/ζ/\&zeta;/e

  silent normal ``

endfunction

" HTML entities --> normal characters
function functions#ReverseEntities()
  mark `

  silent s/&Aacute;/Á/e
  silent s/&aacute;/á/e
  silent s/&Acirc;/Â/e
  silent s/&acirc;/â/e
  silent s/&acute;/´/e
  silent s/&AElig;/Æ/e
  silent s/&aelig;/æ/e
  silent s/&Agrave;/À/e
  silent s/&agrave;/à/e
  silent s/&alefsym;/ℵ/e
  silent s/&Alpha;/Α/e
  silent s/&alpha;/α/e
  silent s/&and;/∧/e
  silent s/&ang;/∠/e
  "silent s/&apos;/'/e
  silent s/&Aring;/Å/e
  silent s/&aring;/å/e
  silent s/&asymp;/≈/e
  silent s/&Atilde;/Ã/e
  silent s/&atilde;/ã/e
  silent s/&Auml;/Ä/e
  silent s/&auml;/ä/e
  silent s/&bdquo;/„/e
  silent s/&Beta;/Β/e
  silent s/&beta;/β/e
  silent s/&brvbar;/¦/e
  silent s/&bull;/•/e
  silent s/&cap;/∩/e
  silent s/&Ccedil;/Ç/e
  silent s/&ccedil;/ç/e
  silent s/&cedil;/¸/e
  silent s/&cent;/¢/e
  silent s/&Chi;/Χ/e
  silent s/&chi;/χ/e
  silent s/&circ;/ˆ/e
  silent s/&clubs;/♣/e
  silent s/&cong;/≅/e
  silent s/&copy;/©/e
  silent s/&crarr;/↵/e
  silent s/&cup;/∪/e
  silent s/&curren;/¤/e
  silent s/&dagger;/†/e
  silent s/&Dagger;/‡/e
  silent s/&darr;/↓/e
  silent s/&dArr;/⇓/e
  silent s/&deg;/°/e
  silent s/&Delta;/Δ/e
  silent s/&delta;/δ/e
  silent s/&diams;/♦/e
  silent s/&divide;/÷/e
  silent s/&Eacute;/É/e
  silent s/&eacute;/é/e
  silent s/&Ecirc;/Ê/e
  silent s/&ecirc;/ê/e
  silent s/&Egrave;/È/e
  silent s/&egrave;/è/e
  silent s/&empty;/∅/e
  silent s/&Epsilon;/Ε/e
  silent s/&epsilon;/ε/e
  silent s/&equiv;/≡/e
  silent s/&Eta;/Η/e
  silent s/&eta;/η/e
  silent s/&ETH;/Ð/e
  silent s/&eth;/ð/e
  silent s/&Euml;/Ë/e
  silent s/&euml;/ë/e
  silent s/&euro;/€/e
  silent s/&exist;/∃/e
  silent s/&fnof;/ƒ/e
  silent s/&forall;/∀/e
  silent s/&frac12;/½/e
  silent s/&frac14;/¼/e
  silent s/&frac34;/¾/e
  silent s/&Gamma;/Γ/e
  silent s/&gamma;/γ/e
  silent s/&ge;/≥/e
  silent s/&harr;/↔/e
  silent s/&hArr;/⇔/e
  silent s/&hearts;/♥/e
  silent s/&hellip;/…/e
  silent s/&Iacute;/Í/e
  silent s/&iacute;/í/e
  silent s/&Icirc;/Î/e
  silent s/&icirc;/î/e
  silent s/&iexcl;/¡/e
  silent s/&Igrave;/Ì/e
  silent s/&igrave;/ì/e
  silent s/&image;/ℑ/e
  silent s/&infin;/∞/e
  silent s/&int;/∫/e
  silent s/&Iota;/Ι/e
  silent s/&iota;/ι/e
  silent s/&iquest;/¿/e
  silent s/&isin;/∈/e
  silent s/&Iuml;/Ï/e
  silent s/&iuml;/ï/e
  silent s/&Kappa;/Κ/e
  silent s/&kappa;/κ/e
  silent s/&Lambda;/Λ/e
  silent s/&lambda;/λ/e
  silent s/&laquo;/«/e
  silent s/&larr;/←/e
  silent s/&lArr;/⇐/e
  silent s/&lceil;/⌈/e
  silent s/&ldquo;/“/e
  silent s/&le;/≤/e
  silent s/&lfloor;/⌊/e
  silent s/&lowast;/∗/e
  silent s/&loz;/◊/e
  silent s/&lsaquo;/‹/e
  silent s/&lsquo;/‘/e
  silent s/&macr;/¯/e
  silent s/&mdash;/—/e
  silent s/&micro;/µ/e
  silent s/&middot;/·/e
  silent s/&minus;/−/e
  silent s/&Mu;/Μ/e
  silent s/&mu;/μ/e
  silent s/&nabla;/∇/e
  silent s/&ndash;/–/e
  silent s/&ne;/≠/e
  silent s/&ni;/∋/e
  silent s/&not;/¬/e
  silent s/&notin;/∉/e
  silent s/&nsub;/⊄/e
  silent s/&Ntilde;/Ñ/e
  silent s/&ntilde;/ñ/e
  silent s/&Nu;/Ν/e
  silent s/&nu;/ν/e
  silent s/&Oacute;/Ó/e
  silent s/&oacute;/ó/e
  silent s/&Ocirc;/Ô/e
  silent s/&ocirc;/ô/e
  silent s/&OElig;/Œ/e
  silent s/&oelig;/œ/e
  silent s/&Ograve;/Ò/e
  silent s/&ograve;/ò/e
  silent s/&oline;/‾/e
  silent s/&Omega;/Ω/e
  silent s/&omega;/ω/e
  silent s/&Omicron;/Ο/e
  silent s/&omicron;/ο/e
  silent s/&oplus;/⊕/e
  silent s/&or;/∨/e
  silent s/&ordf;/ª/e
  silent s/&ordm;/º/e
  silent s/&Oslash;/Ø/e
  silent s/&oslash;/ø/e
  silent s/&Otilde;/Õ/e
  silent s/&otilde;/õ/e
  silent s/&otimes;/⊗/e
  silent s/&Ouml;/Ö/e
  silent s/&ouml;/ö/e
  silent s/&para;/¶/e
  silent s/&part;/∂/e
  silent s/&permil;/‰/e
  silent s/&perp;/⊥/e
  silent s/&Phi;/Φ/e
  silent s/&phi;/φ/e
  silent s/&Pi;/Π/e
  silent s/&pi;/π/e
  silent s/&piv;/ϖ/e
  silent s/&plusmn;/±/e
  silent s/&pound;/£/e
  silent s/&prime;/′/e
  silent s/&Prime;/″/e
  silent s/&prod;/∏/e
  silent s/&prop;/∝/e
  silent s/&Psi;/Ψ/e
  silent s/&psi;/ψ/e
  silent s/&quot;/"/e
  silent s/&radic;/√/e
  silent s/&raquo;/»/e
  silent s/&rarr;/→/e
  silent s/&rArr;/⇒/e
  silent s/&rceil;/⌉/e
  silent s/&rdquo;/”/e
  silent s/&real;/ℜ/e
  silent s/&reg;/®/e
  silent s/&rfloor;/⌋/e
  silent s/&Rho;/Ρ/e
  silent s/&rho;/ρ/e
  silent s/&rsaquo;/›/e
  silent s/&rsquo;/’/e
  silent s/&sbquo;/‚/e
  silent s/&Scaron;/Š/e
  silent s/&scaron;/š/e
  silent s/&sdot;/⋅/e
  silent s/&sect;/§/e
  silent s/&Sigma;/Σ/e
  silent s/&sigma;/σ/e
  silent s/&sigmaf;/ς/e
  silent s/&sim;/∼/e
  silent s/&spades;/♠/e
  silent s/&sub;/⊂/e
  silent s/&sube;/⊆/e
  silent s/&sum;/∑/e
  silent s/&sup;/⊃/e
  silent s/&sup1;/¹/e
  silent s/&sup2;/²/e
  silent s/&sup3;/³/e
  silent s/&supe;/⊇/e
  silent s/&szlig;/ß/e
  silent s/&Tau;/Τ/e
  silent s/&tau;/τ/e
  silent s/&there4;/∴/e
  silent s/&Theta;/Θ/e
  silent s/&theta;/θ/e
  silent s/&thetasym;/ϑ/e
  silent s/&THORN;/Þ/e
  silent s/&thorn;/þ/e
  silent s/&tilde;/˜/e
  silent s/&times;/×/e
  silent s/&trade;/™/e
  silent s/&Uacute;/Ú/e
  silent s/&uacute;/ú/e
  silent s/&uarr;/↑/e
  silent s/&uArr;/⇑/e
  silent s/&Ucirc;/Û/e
  silent s/&ucirc;/û/e
  silent s/&Ugrave;/Ù/e
  silent s/&ugrave;/ù/e
  silent s/&uml;/¨/e
  silent s/&upsih;/ϒ/e
  silent s/&Upsilon;/Υ/e
  silent s/&upsilon;/υ/e
  silent s/&Uuml;/Ü/e
  silent s/&uuml;/ü/e
  silent s/&weierp;/℘/e
  silent s/&Xi;/Ξ/e
  silent s/&xi;/ξ/e
  silent s/&Yacute;/Ý/e
  silent s/&yacute;/ý/e
  silent s/&yen;/¥/e
  silent s/&yuml;/ÿ/e
  silent s/&Yuml;/Ÿ/e
  silent s/&Zeta;/Ζ/e
  silent s/&zeta;/ζ/e

  silent normal ``

endfunction

" normal characters --> URL encoded characters
function functions#URLencoding()
  mark `

  silent s/!/%21/e
  silent s/ /%22/e
  silent s/#/%23/e
  silent s/$/%24/e
  " silent s/%/%25/e
  silent s/&/%26/e
  silent s/'/%27/e
  silent s/(/%28/e
  silent s/)/%29/e
  silent s/*/%2A/e
  silent s/+/%2B/e
  silent s/,/%2C/e
  silent s/\-/%2D/e
  silent s/\./%2E/e
  silent s/\//%2F/e
  silent s/:/%3A/e
  silent s/;/%3B/e
  silent s/</%3C/e
  silent s/=/%3D/e
  silent s/>/%3E/e
  silent s/?/%3F/e
  silent s/@/%40/e
  silent s/\[/%5B/e
  silent s/\\/%5C/e
  silent s/\]/%5D/e
  silent s/\^/%5E/e
  silent s/_/%5F/e
  silent s/`/%60/e
  silent s/{/%7B/e
  silent s/|/%7C/e
  silent s/}/%7D/e
  silent s/~/%7E/e
  silent s/€/%80/e
  silent s/‚/%82/e
  silent s/ƒ/%83/e
  silent s/„/%84/e
  silent s/…/%85/e
  silent s/†/%86/e
  silent s/‡/%87/e
  silent s/ˆ/%88/e
  silent s/‰/%89/e
  silent s/Š/%8A/e
  silent s/‹/%8B/e
  silent s/Œ/%8C/e
  silent s/Ž/%8E/e
  silent s/‘/%91/e
  silent s/’/%92/e
  silent s/“/%93/e
  silent s/”/%94/e
  silent s/•/%95/e
  silent s/–/%96/e
  silent s/—/%97/e
  silent s/˜/%98/e
  silent s/™/%99/e
  silent s/š/%9A/e
  silent s/›/%9B/e
  silent s/œ/%9C/e
  silent s/ž/%9E/e
  silent s/Ÿ/%9F/e
  silent s/¡/%A1/e
  silent s/¢/%A2/e
  silent s/£/%A3/e
  silent s/¥/%A5/e
  silent s/|/%A6/e
  silent s/§/%A7/e
  silent s/¨/%A8/e
  silent s/©/%A9/e
  silent s/ª/%AA/e
  silent s/«/%AB/e
  silent s/¬/%AC/e
  silent s/¯/%AD/e
  silent s/®/%AE/e
  silent s/¯/%AF/e
  silent s/°/%B0/e
  silent s/±/%B1/e
  silent s/²/%B2/e
  silent s/³/%B3/e
  silent s/´/%B4/e
  silent s/µ/%B5/e
  silent s/¶/%B6/e
  silent s/·/%B7/e
  silent s/¸/%B8/e
  silent s/¹/%B9/e
  silent s/º/%BA/e
  silent s/»/%BB/e
  silent s/¼/%BC/e
  silent s/½/%BD/e
  silent s/¾/%BE/e
  silent s/¿/%BF/e
  silent s/À/%C0/e
  silent s/Á/%C1/e
  silent s/Â/%C2/e
  silent s/Ã/%C3/e
  silent s/Ä/%C4/e
  silent s/Å/%C5/e
  silent s/Æ/%C6/e
  silent s/Ç/%C7/e
  silent s/È/%C8/e
  silent s/É/%C9/e
  silent s/Ê/%CA/e
  silent s/Ë/%CB/e
  silent s/Ì/%CC/e
  silent s/Í/%CD/e
  silent s/Î/%CE/e
  silent s/Ï/%CF/e
  silent s/Ð/%D0/e
  silent s/Ñ/%D1/e
  silent s/Ò/%D2/e
  silent s/Ó/%D3/e
  silent s/Ô/%D4/e
  silent s/Õ/%D5/e
  silent s/Ö/%D6/e
  silent s/Ø/%D8/e
  silent s/Ù/%D9/e
  silent s/Ú/%DA/e
  silent s/Û/%DB/e
  silent s/Ü/%DC/e
  silent s/Ý/%DD/e
  silent s/Þ/%DE/e
  silent s/ß/%DF/e
  silent s/à/%E0/e
  silent s/á/%E1/e
  silent s/â/%E2/e
  silent s/ã/%E3/e
  silent s/ä/%E4/e
  silent s/å/%E5/e
  silent s/æ/%E6/e
  silent s/ç/%E7/e
  silent s/è/%E8/e
  silent s/é/%E9/e
  silent s/ê/%EA/e
  silent s/ë/%EB/e
  silent s/ì/%EC/e
  silent s/í/%ED/e
  silent s/î/%EE/e
  silent s/ï/%EF/e
  silent s/ð/%F0/e
  silent s/ñ/%F1/e
  silent s/ò/%F2/e
  silent s/ó/%F3/e
  silent s/ô/%F4/e
  silent s/õ/%F5/e
  silent s/ö/%F6/e
  silent s/÷/%F7/e
  silent s/ø/%F8/e
  silent s/ù/%F9/e
  silent s/ú/%FA/e
  silent s/û/%FB/e
  silent s/ü/%FC/e
  silent s/ý/%FD/e
  silent s/þ/%FE/e
  silent s/ÿ/%FF/e

  silent normal ``

endfunction

" URL encoded characters --> normal characters
function functions#ReverseURLencoding()
  mark `

  silent s/%21/!/e
  silent s/%22/ /e
  silent s/%23/#/e
  silent s/%24/$/e
  " silent s/%25/%/e
  silent s/%26/&/e
  silent s/%27/'/e
  silent s/%28/(/e
  silent s/%29/)/e
  silent s/%2A/*/e
  silent s/%2B/+/e
  silent s/%2C/,/e
  silent s/%2D/-/e
  silent s/%2E/./e
  silent s/%2F/\//e
  silent s/%3A/:/e
  silent s/%3B/;/e
  silent s/%3C/</e
  silent s/%3D/=/e
  silent s/%3E/>/e
  silent s/%3F/?/e
  silent s/%40/@/e
  silent s/%5B/[/e
  silent s/%5C/\\/e
  silent s/%5D/]/e
  silent s/%5E/^/e
  silent s/%5F/_/e
  silent s/%60/`/e
  silent s/%7B/{/e
  silent s/%7C/|/e
  silent s/%7D/}/e
  silent s/%7E/~/e
  silent s/%80/€/e
  silent s/%82/‚/e
  silent s/%83/ƒ/e
  silent s/%84/„/e
  silent s/%85/…/e
  silent s/%86/†/e
  silent s/%87/‡/e
  silent s/%88/ˆ/e
  silent s/%89/‰/e
  silent s/%8A/Š/e
  silent s/%8B/‹/e
  silent s/%8C/Œ/e
  silent s/%8E/Ž/e
  silent s/%91/‘/e
  silent s/%92/’/e
  silent s/%93/“/e
  silent s/%94/”/e
  silent s/%95/•/e
  silent s/%96/–/e
  silent s/%97/—/e
  silent s/%98/˜/e
  silent s/%99/™/e
  silent s/%9A/š/e
  silent s/%9B/›/e
  silent s/%9C/œ/e
  silent s/%9D/ /e
  silent s/%9E/ž/e
  silent s/%9F/Ÿ/e
  silent s/%A1/¡/e
  silent s/%A2/¢/e
  silent s/%A3/£/e
  silent s/%A5/¥/e
  silent s/%A6/|/e
  silent s/%A7/§/e
  silent s/%A8/¨/e
  silent s/%A9/©/e
  silent s/%AA/ª/e
  silent s/%AB/«/e
  silent s/%AC/¬/e
  silent s/%AD/¯/e
  silent s/%AE/®/e
  silent s/%AF/¯/e
  silent s/%B0/°/e
  silent s/%B1/±/e
  silent s/%B2/²/e
  silent s/%B3/³/e
  silent s/%B4/´/e
  silent s/%B5/µ/e
  silent s/%B6/¶/e
  silent s/%B7/·/e
  silent s/%B8/¸/e
  silent s/%B9/¹/e
  silent s/%BA/º/e
  silent s/%BB/»/e
  silent s/%BC/¼/e
  silent s/%BD/½/e
  silent s/%BE/¾/e
  silent s/%BF/¿/e
  silent s/%C0/À/e
  silent s/%C1/Á/e
  silent s/%C2/Â/e
  silent s/%C3/Ã/e
  silent s/%C4/Ä/e
  silent s/%C5/Å/e
  silent s/%C6/Æ/e
  silent s/%C7/Ç/e
  silent s/%C8/È/e
  silent s/%C9/É/e
  silent s/%CA/Ê/e
  silent s/%CB/Ë/e
  silent s/%CC/Ì/e
  silent s/%CD/Í/e
  silent s/%CE/Î/e
  silent s/%CF/Ï/e
  silent s/%D0/Ð/e
  silent s/%D1/Ñ/e
  silent s/%D2/Ò/e
  silent s/%D3/Ó/e
  silent s/%D4/Ô/e
  silent s/%D5/Õ/e
  silent s/%D6/Ö/e
  silent s/%D8/Ø/e
  silent s/%D9/Ù/e
  silent s/%DA/Ú/e
  silent s/%DB/Û/e
  silent s/%DC/Ü/e
  silent s/%DD/Ý/e
  silent s/%DE/Þ/e
  silent s/%DF/ß/e
  silent s/%E0/à/e
  silent s/%E1/á/e
  silent s/%E2/â/e
  silent s/%E3/ã/e
  silent s/%E4/ä/e
  silent s/%E5/å/e
  silent s/%E6/æ/e
  silent s/%E7/ç/e
  silent s/%E8/è/e
  silent s/%E9/é/e
  silent s/%EA/ê/e
  silent s/%EB/ë/e
  silent s/%EC/ì/e
  silent s/%ED/í/e
  silent s/%EE/î/e
  silent s/%EF/ï/e
  silent s/%F0/ð/e
  silent s/%F1/ñ/e
  silent s/%F2/ò/e
  silent s/%F3/ó/e
  silent s/%F4/ô/e
  silent s/%F5/õ/e
  silent s/%F6/ö/e
  silent s/%F7/÷/e
  silent s/%F8/ø/e
  silent s/%F9/ù/e
  silent s/%FA/ú/e
  silent s/%FB/û/e
  silent s/%FC/ü/e
  silent s/%FD/ý/e
  silent s/%FE/þ/e
  silent s/%FF/ÿ/e

  silent normal ``

endfunction

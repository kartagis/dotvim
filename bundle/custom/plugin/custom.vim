""""""""""""""""""""""
" EXPERIMENTAL STUFF "
""""""""""""""""""""""

" redirect the output of a Vim command into a scratch buffer
command! -nargs=1 Redir silent call custom#Redir(<f-args>)

" open a scratch buffer
command! SC vnew | setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile

" remove arguments on the command-line
cnoremap <C-k> <C-\>esplit(getcmdline(), " ")[0]<CR><Space>

" cycle common words
nnoremap cy :call custom#Cycle()<CR>

" quick :g
nmap ,@ :g/<C-r><C-w>/#<CR>
nmap ,# :g//#<Left><Left>

" specialized search/replace
" (broken)
" nnoremap <Space>f "zyiwm'/{<CR>%V'':s/\<<C-r>z\>/
" nnoremap <Space>b "zyiwVi(:s/\<<C-r>z\>/
" nnoremap <Space>B "zyiwVi{:s/\<<C-r>z\>/

" search/replace across multiple files
command! -nargs=+ -complete=file_in_path Replace call custom#Replace(<f-args>)
command!                                 Done    call custom#Done()

" nnoremap § *``gn<C-g>
" inoremap § <C-o>gn<C-g>
" xnoremap § <Esc>:let @/ = custom#GetVisualSelection()<CR>gn<C-g>
" snoremap <expr> . @.

set report=0

command! TD Grep TODO
command! FM Grep FIXME

" better incremental search
" nnoremap / :<C-u>let b:direction = "f"<CR>mz/
" onoremap / :<C-u>let b:direction = "f"<CR>mzgv/
" nnoremap ? :<C-u>let b:direction = "b"<CR>mz?
" onoremap ? :<C-u>let b:direction = "b"<CR>mzgv?

" cnoremap <expr> <Tab>   custom#BetterIncSearch("tab")
" cnoremap <expr> <S-Tab> custom#BetterIncSearch("stab")
" cnoremap <expr> <C-c>   custom#BetterIncSearch("ctrlc")

" smarter incsearch
cnoremap <expr> <Tab>   getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>/<C-r>/" : "<C-z>"
cnoremap <expr> <S-Tab> getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>?<C-r>/" : "<S-Tab>"

" universal opposite of J
function! BreakHere()
    s/^\(\s*\)\(.\{-}\)\(\s*\)\(\%#\)\(\s*\)\(.*\)/\1\2\r\1\4\6
    call histdel("/", -1)
endfunction

" TODO for all
" autocmd BufWinEnter * call matchadd("Todo", '\(TODO\|HACK\)')



" if there's an .editorconfig file, use it
"   * parse it
"   * create a list of dicts, one for each pattern
"   * build autocommands for each dict
"   * install autocommands
" if not, do like YAIFA
function! Indentist()
    let config_file_path = findfile(".editorconfig", ".;")

    if len(config_file_path) == 0
        echom "no .editorconfig found, use yaifa logic"
    else
        let config_file_content = filter(readfile(config_file_path), 'v:val !~ "^$" && v:val !~ "^\s*#" && v:val !~ "^root"')
        let rules = []
        let rule = {"pattern": "", "settings": []}

        for line in config_file_content
            if line =~ "^\s*["
                if rule.pattern != ""
                    call add(rules, rule)
                endif

                let rule = {"pattern": "", "settings": []}

                " FIXME too many subs
                let pattern = substitute(line, "^[", "", "")
                let pattern = substitute(pattern, "]$", "", "")

                let rule["pattern"] = pattern
            else
                let setting = ""
                let option = split(tolower(substitute(line, " ", "", "g")), "=")

                if option[0] == "indent_style"
                    " indent_style
                    " Indentation Style

                    " indent_style=tab      --->    setlocal noexpandtab
                    " indent_style=space    --->    setlocal expandtab
                    if option[1] == "tab"
                        let setting = "noexpandtab"
                    elseif option[1] == "space"
                        let setting = "expandtab"
                    else
                        let setting = &expandtab
                    endif

                    call add(rule.settings, setting)
                endif

                if option[0] == "indent_size"
                    " indent_size
                    " Indentation Size (in single-spaced characters)

                    " indent_size=4      --->    setlocal shiftwidth=4 shiftround softtabstop=4
                    " indent_size=tab    --->    setlocal shiftround shiftwidth=&tabstop softtabstop=&tabstop
                    if option[1] == "tab"
                        let setting = "shiftround shiftwidth=" . &tabstop . " softtabstop=" . &tabstop
                    elseif option[1] =~ '\d\+'
                        let setting = "shiftround shiftwidth=" . option[1] . " softtabstop=" . option[1]
                    else
                        let setting = "shiftround shiftwidth=" . &tabstop . " softtabstop=" . &tabstop
                    endif

                    call add(rule.settings, setting)
                endif

                if option[0] == "tab_width"
                    " tab_width
                    " Width of a single tabstop character

                    " a positive integer (defaults indent_size when indent_size is a number)
                    " tab_width=4    --->    setlocal tabstop=4
                    if option[1] =~ '^\d'
                        let setting = "tabstop=" . option[1]
                    endif

                    call add(rule.settings, setting)
                endif

                if option[0] == "end_of_line"
                    " end_of_line
                    " Line ending file format (Unix, DOS, Mac) 

                    " end_of_line=lf      --->   setlocal fileformat=unix
                    " end_of_line=crlf    --->   setlocal fileformat=dos
                    " end_of_line=cr      --->   setlocal fileformat=mac
                    if option[1] == "lf"
                        let setting = "fileformat=unix"
                    elseif option[1] == "crlf"
                        let setting = "fileformat=dos"
                    elseif option[1] == "cr"
                        let setting = "fileformat=mac"
                    else
                        let setting = "fileformat=unix"
                    endif

                    call add(rule.settings, setting)
                endif

                if option[0] == "charset"
                    " charset
                    " File character encoding

                    " charset=latin1      --->    setlocal fileencoding=latin1
                    " charset=utf-8       --->    setlocal fileencoding=utf-8
                    " charset=utf-16be    --->    setlocal fileencoding=utf-16
                    " charset=utf-16le    --->    setlocal fileencoding=utf-8
                    if option[1] == "latin1"
                        let setting = "fileencoding=latin1"
                    elseif option[1] == "utf-8"
                        let setting = "fileencoding=utf-8"
                    elseif option[1] == "utf16-be"
                        let setting = "fileencoding=utf-16"
                    elseif option[1] == "utf16-le"
                        let setting = "fileencoding=utf-8"
                    else
                        let setting = "fileencoding=utf-8"
                    endif

                    call add(rule.settings, setting)
                endif

                if option[0] == "trim_trailing_whitespace"
                    " trim_trailing_whitespace
                    " Denotes whether whitespace is allowed at the end of lines

                    " trim_trailing_whitespace=true
                    " trim_trailing_whitespace=false
                endif

                if option[0] == "insert_final_newline"
                    " insert_final_newline
                    " Denotes whether file should end with a newline

                    " insert_final_newline=true     --->   no support in vim?
                    " insert_final_newline=false    --->   no support in vim?
                endif

                if option[0] == "max_line_length"
                    " max_line_length
                    " Forces hard line wrapping after the amount of characters specified

                    " max_line_length=80    --->    setlocal textwidth=100 colorcolumn=101 formatoptions+=q1tc
                    if option[1] =~ '\d\+'
                        let setting = "textwidth=" . option[1] . " colorcolumn=" . option[1] + 1 . "formatoptions+=qtc"
                    endif

                    call add(rule.settings, setting)
                endif
            endif
        endfor

        " now use those rules to install autocommands
        let autocommands = []

        for rule in rules
            if len(rule.settings) > 0
                let autocommand = "autocmd BufNewFile,BufEnter " . rule.pattern . " setlocal"

                for setting in rule.settings
                    let autocommand .= " " . setting
                endfor

                call add(autocommands, autocommand)
            endif
        endfor

        echo autocommands

        augroup Indentist
            autocmd!

            for autocommand in autocommands
                execute autocommand
            endfor
        augroup END
    endif
endfunction

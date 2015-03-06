filetype off
syntax off

call pathogen#infect()

filetype plugin indent on
syntax on

runtime macros/matchit.vim

""""""""""""""""""""
" GENERIC SETTINGS "
""""""""""""""""""""
" basic
set backspace=indent,eol,start
set hidden
set incsearch
set laststatus=2
set switchbuf=useopen,usetab
set tags=./tags;,tags;
set wildmenu

" fancy
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set smarttab

set gdefault
set ignorecase
set smartcase

set wildcharm=<C-z>
set wildignore+=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=*/min/*,*/vendor/*
set wildignore+=tags,cscope.*
set wildignore+=*.tar.*
set wildignorecase
set wildmode=list:full

set statusline=%<\ %f\ %m%y%w%=\ L:\ \%l\/\%L\ C:\ \%c\ 

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set foldlevelstart=999
set foldmethod=indent
set foldopen=hor,insert,jump,mark,percent,quickfix,search,tag,undo

set splitbelow
set splitright

set clipboard^=unnamed
set complete=.,w,b
set completeopt+=longest,menuone
set cursorline
set fileformats=unix,dos,mac
set formatoptions+=1
set history=100
set mouse=a
set nostartofline
set noswapfile
set nrformats-=octal
set path=.,**
set previewheight=1
set virtualedit=block

"""""""""""""""""
" PRETTY COLORS "
"""""""""""""""""
colorscheme apprentice

"""""""""""""""""""
" USEFUL DEFAULTS "
"""""""""""""""""""
augroup VIMRC
    autocmd!

    autocmd FocusLost * call functions#AutoSave()

    autocmd VimEnter,GUIEnter * set visualbell t_vb=

    autocmd BufLeave * let b:winview = winsaveview()
    autocmd BufEnter * if exists('b:winview') | call winrestview(b:winview) | endif

    autocmd BufLeave *.css,*.less normal! mC
    autocmd BufLeave *.html       normal! mH
    autocmd BufLeave *.js         normal! mJ
    autocmd BufLeave *.php        normal! mP
    autocmd BufLeave vimrc,*.vim  normal! mV
augroup END

"""""""""""""""""""""""""""""""""
" ENVIRONMENT-SPECIFIC SETTINGS "
"""""""""""""""""""""""""""""""""
if !exists('os')
    if has('win32') || has('win16')
        let os = 'Windows'
    else
        let os = substitute(system('uname'), '\n', '', '')
    endif
endif

if has('gui_running')
    set guioptions-=T
    set guioptions-=m

    if os == 'Darwin'
        set guifont=Fira\ Mono:h12
        set fuoptions=maxvert,maxhorz
    elseif os == 'Linux'
        set guifont=Fira\ Mono\ 10
    elseif os == 'Windows'
        set guifont=Fira_Mono:h12:cANSI
    endif
else
    if &term =~ '^screen'
        " tmux will send xterm-style keys when its xterm-keys option is on
        execute "set <xUp>=\e[1;*A"
        execute "set <xDown>=\e[1;*B"
        execute "set <xRight>=\e[1;*C"
        execute "set <xLeft>=\e[1;*D"
    endif

    " allows clicking after the 223rd column
    if has('mouse_sgr')
        set ttymouse=sgr
    endif

    nnoremap <Esc>A <up>
    nnoremap <Esc>B <down>
    nnoremap <Esc>C <right>
    nnoremap <Esc>D <left>
    inoremap <Esc>A <up>
    inoremap <Esc>B <down>
    inoremap <Esc>C <right>
    inoremap <Esc>D <left>
endif

"""""""""""""""""""""""
" JUGGLING WITH FILES "
"""""""""""""""""""""""
nnoremap ,f :find *
nnoremap ,F :find <C-R>=expand('%:p:h').'/**/*'<CR>
nnoremap ,s :sfind *
nnoremap ,S :sfind <C-R>=expand('%:p:h').'/**/*'<CR>
nnoremap ,v :vert sfind *
nnoremap ,V :vert sfind <C-R>=expand('%:p:h').'/**/*'<CR>

command! -nargs=1 -complete=customlist,functions#MRUComplete ME call functions#MRU('edit', <f-args>)
command! -nargs=1 -complete=customlist,functions#MRUComplete MS call functions#MRU('split', <f-args>)
command! -nargs=1 -complete=customlist,functions#MRUComplete MV call functions#MRU('vsplit', <f-args>)
command! -nargs=1 -complete=customlist,functions#MRUComplete MT call functions#MRU('tabedit', <f-args>)

"""""""""""""""""""""""""
" JUGGLING WITH BUFFERS "
"""""""""""""""""""""""""
nnoremap ,b :buffer <C-z><S-Tab>
nnoremap ,B :sbuffer <C-z><S-Tab>

nnoremap gb :ls<CR>:buffer<Space>
nnoremap gB :ls<CR>:sbuffer<Space>

nnoremap <PageUp>   :bprevious<CR>
nnoremap <PageDown> :bnext<CR>

"""""""""""""""""""""""""
" JUGGLING WITH WINDOWS "
"""""""""""""""""""""""""
nnoremap <C-Down> <C-w>w
nnoremap <C-Up>   <C-w>W

"""""""""""""""""""""""
" JUGGLING WITH LINES "
"""""""""""""""""""""""
nnoremap ,<Up>   :<C-u>silent! move-2<CR>==
nnoremap ,<Down> :<C-u>silent! move+<CR>==
xnoremap ,<Up>   :<C-u>silent! '<,'>move-2<CR>gv=gv
xnoremap ,<Down> :<C-u>silent! '<,'>move'>+<CR>gv=gv

"""""""""""""""""""""""
" JUGGLING WITH WORDS "
"""""""""""""""""""""""
nnoremap ,<Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap ,<Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>

"""""""""""""""""""""""""""""
" JUGGLING WITH COMPLETIONS "
"""""""""""""""""""""""""""""
inoremap ,, <C-x><C-o><C-r>=pumvisible() ? "\<lt>Down>\<lt>C-p>\<lt>Down>" : ""<CR>
inoremap ,; <C-n><C-r>=pumvisible() ? "\<lt>Down>\<lt>C-p>\<lt>Down>" : ""<CR>
inoremap ,: <C-x><C-f><C-r>=pumvisible() ? "\<lt>Down>\<lt>C-p>\<lt>Down>" : ""<CR>
inoremap ,= <C-x><C-l><C-r>=pumvisible() ? "\<lt>Down>\<lt>C-p>\<lt>Down>" : ""<CR>

""""""""""""""""""""""""""
" JUGGLING WITH SEARCHES "
""""""""""""""""""""""""""
nnoremap [I [I:
nnoremap ,I :ilist /

command! -nargs=+ -complete=file_in_path -bar Grep silent! grep! <args> | redraw!

xnoremap <silent> K :<C-u>let cmd = "Grep " . functions#GetVisualSelection() <bar>
                        \ call histadd("cmd",cmd) <bar>
                        \ execute cmd<CR>

if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

""""""""""""""""""""""""""""""""
" JUGGLING WITH SEARCH/REPLACE "
""""""""""""""""""""""""""""""""
nnoremap <Space><Space> :'{,'}s/\<<C-r>=expand('<cword>')<CR>\>/
nnoremap <Space>%       :%s/\<<C-r>=expand('<cword>')<CR>\>/

xnoremap <Space><Space> :<C-u>'{,'}s/<C-r>=functions#GetVisualSelection()<CR>/
xnoremap <Space>%       :<C-u>%s/<C-r>=functions#GetVisualSelection()<CR>/

"""""""""""""""""""""""""
" JUGGLING WITH CHANGES "
"""""""""""""""""""""""""
nnoremap ,; *``cgn
nnoremap ,, #``cgN

xnoremap ,; <Esc>:let @/ = functions#GetVisualSelection()<CR>cgn
xnoremap ,, <Esc>:let @/ = functions#GetVisualSelection()<CR>cgN

""""""""""""""""""""""
" JUGGLING WITH TAGS "
""""""""""""""""""""""
command! Tagit  call functions#Tagit(0)
command! Bombit call functions#Tagit(1)

nnoremap ,t :Bombit<CR>:tjump /
nnoremap ,p :Bombit<CR>:ptjump /

nnoremap g] :Bombit<CR>g<C-]>

nnoremap [D [D:
nnoremap ,D :dlist /

"""""""""""""""""""""""""
" JUGGLING WITH NUMBERS "
"""""""""""""""""""""""""
xnoremap <silent> <C-a> :<C-u>let vcount = v:count1 <bar> '<,'>s/\%V\d\+/\=submatch(0) + vcount<cr>gv
xnoremap <silent> <C-x> :<C-u>let vcount = v:count1 <bar> '<,'>s/\%V\d\+/\=submatch(0) - vcount<cr>gv

xnoremap <silent> ,i :<C-u>let vcount = v:count<CR>gv:call functions#Incr(vcount)<CR>

""""""""""""""""""""
" VARIOUS MAPPINGS "
""""""""""""""""""""
nnoremap ,d "_d
xnoremap ,d "_d

xnoremap ,p "_dP

nnoremap Y y$

xnoremap > >gv
xnoremap < <gv

nnoremap ,<Space><Space> m`o<Esc>kO<Esc>``

nnoremap <expr> k      v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j      v:count == 0 ? 'gj' : 'j'
nnoremap <expr> <Up>   v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <Down> v:count == 0 ? 'gj' : 'j'

nnoremap gV `[v`]

nnoremap mù m`
nnoremap ùù ``

" merci twal
onoremap w :<C-u>norm w<CR>
onoremap W :<C-u>norm W<CR>

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-r>=functions#SmartEnter()\<CR>"

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

cnoremap %% <C-r>=expand('%')<CR>
cnoremap :: <C-r>=expand('%:p:h')<CR>

"""""""""""""""""""""""
" CUSTOM TEXT-OBJECTS "
"""""""""""""""""""""""
for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%' ]
    execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
    execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
    execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
    execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

""""""""""""""""""""
" VARIOUS COMMANDS "
""""""""""""""""""""
command! TU call functions#ToUnix()

command! SS echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')

command! LCD lcd %:p:h
command! CD  cd %:p:h

command! -range=% TR mark ` | execute <line1> . ',' . <line2> . 's/\s\+$//' | normal! ``

command! TD Grep TODO:
command! FM Grep FIXME:

command! EV tabedit $MYVIMRC <bar> lcd %:p:h
command! SV source $MYVIMRC

" sharing is caring
command! -range=% VP  execute <line1> . "," . <line2> . "w !vpaste ft=" . &filetype
command! -range=% SP  silent execute <line1> . "," . <line2> . "w !curl -F 'sprunge=<-' http://sprunge.us | tr -d '\\n' | pbcopy"
command!          CMD let @+ = ':' . @:

"""""""""""""""""""
" PLUGIN SETTINGS "
"""""""""""""""""""
let g:snippets_dir = '~/.vim/snippets/'
imap ,<Tab> <C-r><Tab>

let g:netrw_winsize   = '30'
let g:netrw_banner    = 0
let g:netrw_keepdir   = 1
let g:netrw_liststyle = 3

let g:html_indent_script1 = 'inc'
let g:html_indent_style1  = 'inc'
let g:html_indent_inctags = 'html,body,head,tbody,p,li,dd,dt,h1,h2,h3,h4,h5,h6,blockquote'

let g:sparkup = '~/.vim/bundle/sparkup/ftplugin/html/sparkup.py'

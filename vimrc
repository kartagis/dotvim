filetype off
syntax off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

runtime macros/matchit.vim

""""""""""""""""""""
" GENERIC SETTINGS "
""""""""""""""""""""

" minimal
set backspace=indent,eol,start
set hidden
set incsearch
set laststatus=2
set switchbuf=useopen,usetab
set tags=./tags;,tags;
set tags^=./.temptags
set wildmenu

" better
set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab

set gdefault
set ignorecase
set smartcase

set encoding=utf-8
set termencoding=utf-8

set wildcharm=<C-z>
set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*.tar.*
set wildignorecase
set wildmode=list:full

set statusline=%<\ %f\ %m%y%w%=\ L:\ \%l\/\%L\ C:\ \%c\ 

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set foldlevelstart=999
set foldmethod=indent
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

set splitbelow
set splitright

set completeopt+=longest
set cursorline
set fileformats=unix,dos,mac
set formatoptions+=1
set mouse=a
set nostartofline
set noswapfile
set nrformats-=octal
set path=.,**
set previewheight=4
set scrolloff=4
set virtualedit=block

colorscheme apprentice

augroup VIMRC
  autocmd!

  autocmd FocusLost,InsertLeave * call functions#global#AutoSave()

  autocmd VimEnter,GUIEnter * set visualbell t_vb=

  autocmd BufLeave * let b:winview = winsaveview()
  autocmd BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif

  autocmd BufLeave *.css,*.less normal! mC
  autocmd BufLeave *.html       normal! mH
  autocmd BufLeave *.js         normal! mJ
  autocmd BufLeave *.php        normal! mP
  autocmd BufLeave vimrc,*.vim  normal! mV

augroup END

"""""""""""""""""""""""""""""""""
" ENVIRONMENT-SPECIFIC SETTINGS "
"""""""""""""""""""""""""""""""""

let os=substitute(system('uname'), '\n', '', '')

if has('gui_running')

  set guioptions-=T

  set lines=40
  set columns=140

  if os == 'Darwin'
    set guifont=Inconsolata-g:h12
    set fuoptions=maxvert,maxhorz
    set clipboard^=unnamed

  elseif os == 'Linux'
    set guifont=Inconsolata-g\ Medium\ 10
    set guioptions-=m
    set clipboard^=unnamedplus

  endif

else
  if os == 'Darwin'
    set clipboard^=unnamed

  elseif os == 'Linux'
    set clipboard^=unnamedplus

  endif

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

"""""""""""""""""""
" CUSTOM MAPPINGS "
"""""""""""""""""""

let mapleader = ","
" available keys: a c         mno q   u w yz
"                 A CDE GHIJKLMNOPQ   U W YZ

" juggling with files
nnoremap <leader>f :find *
nnoremap <leader>F :find <C-R>=expand('%:p:h').'/**/*'<CR>
nnoremap <leader>s :sfind *
nnoremap <leader>S :sfind <C-R>=expand('%:p:h').'/**/*'<CR>
nnoremap <leader>v :vert sfind *
nnoremap <leader>V :vert sfind <C-R>=expand('%:p:h').'/**/*'<CR>

" juggling with buffers
nnoremap <leader>b :buffer <C-z><S-Tab>
nnoremap <leader>B :sbuffer <C-z><S-Tab>

nnoremap <PageUp>   :bprevious<CR>
nnoremap <PageDown> :bnext<CR>

nnoremap gb :buffers<CR>:buffer<Space>

" juggling with windows
nnoremap <C-Down> <C-w>w
nnoremap <C-Up>   <C-w>W

" juggling with lines
nnoremap <leader>k      :move-2<CR>==
nnoremap <leader>j      :move+<CR>==
nnoremap <leader><Up>   :move-2<CR>==
nnoremap <leader><Down> :move+<CR>==
xnoremap <leader>k      :move-2<CR>gv=gv
xnoremap <leader>j      :move'>+<CR>gv=gv
xnoremap <leader><Up>   :move-2<CR>gv=gv
xnoremap <leader><Down> :move'>+<CR>gv=gv

" juggling with words
nnoremap <leader>h       "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader>l       "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
nnoremap <leader><Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>

" juggling with completions
inoremap <leader>, <C-x><C-o>
inoremap <leader>/ <C-x><C-f>
inoremap <leader>- <C-x><C-l>
inoremap <leader>* <C-x><C-n>

" super fast search/replace
nnoremap <leader>r :'{,'}s/\<<C-r>=expand('<cword>')<CR>\>/
nnoremap <leader>R :%s/\<<C-r>=expand('<cword>')<CR>\>/

xnoremap <leader>r :<C-u>'{,'}s/<C-r>=functions#global#GetVisualSelection()<CR>/
xnoremap <leader>R :<C-u>%s/<C-r>=functions#global#GetVisualSelection()<CR>/

" faster 'dot formula'
nnoremap <leader>x *``cgn
nnoremap <leader>X #``cgN

xnoremap <leader>x <Esc>:let @/ = functions#global#GetVisualSelection()<CR>cgn
xnoremap <leader>X <Esc>:let @/ = functions#global#GetVisualSelection()<CR>cgN

inoremap <leader>x <Esc>gn<C-g>
inoremap <leader>X <Esc>gN<C-g>

" various stuff
nnoremap <leader>d "_d
xnoremap <leader>d "_d

xnoremap <leader>p "_dP

nnoremap Y y$

xnoremap > >gv
xnoremap < <gv

nnoremap <leader><Space><Space> m`o<Esc>kO<Esc>``

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

nnoremap j      gj
nnoremap k      gk
nnoremap <Down> gj
nnoremap <up>   gk

" merci twal
onoremap w :<C-u>norm w<CR>
onoremap W :<C-u>norm W<CR>

"""""""""""""""""
" EXPERIMENTAL! "
"""""""""""""""""

inoremap <expr> <CR> functions#global#SmartEnter()

nnoremap <silent> <Home>  :call functions#global#WrapCommand('up', 'c')<CR>
nnoremap <silent> <End>   :call functions#global#WrapCommand('down', 'c')<CR>
nnoremap <silent> <Space> :call functions#global#WrapCommand('down', 'l')<CR>

nnoremap <leader>t :Bombit<CR>:tjump /
nnoremap <leader>T :call functions#tags#Bombit(1)<CR>:Btag <C-z><S-Tab>

nnoremap <leader>p :Bombit<CR>:ptjump /

nnoremap <C-]> :Bombit<CR><C-]>
nnoremap <C-}> :Bombit<CR><C-}>

cnoremap %% <C-r>=expand('%')<CR>
cnoremap :: <C-r>=expand('%:p:h')<CR>

nnoremap gV `[v`]

xnoremap <C-a> :<C-u>let vcount = v:count ? v:count : 1 <bar> '<,'>s/\%V\d\+/\=submatch(0) + vcount<cr>gv
xnoremap <C-x> :<C-u>let vcount = v:count ? v:count : 1 <bar> '<,'>s/\%V\d\+/\=submatch(0) - vcount<cr>gv

xnoremap <leader>i :call functions#global#Incr()<CR>

nnoremap <leader>c :call functions#global#Cycle()<CR>

" backtick issues in iTerm/Terminal
nnoremap mù m`
nnoremap ùù ``

"""""""""""""""""""""""
" CUSTOM TEXT-OBJECTS "
"""""""""""""""""""""""

for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%', '"', "'" ]
  execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

"""""""""""""""""""
" CUSTOM COMMANDS "
"""""""""""""""""""

command! Tagit  call functions#tags#Tagit()
command! Bombit call functions#tags#Bombit(0)

command! ToUnix call functions#global#ToUnix()

command! SS echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')

command! LCD lcd %:p:h
command! CD  cd %:p:h

" sharing is caring
command! -range=% VP execute <line1> . "," . <line2> . "w !vpaste ft=" . &filetype
command! CMD         let @+ = ':' . @:

command! -range=% TR mark `|execute <line1> . ',' . <line2> . 's/\s\+$//'|normal! ``

command! TD tselect TODO
command! FM tselect FIXME

command! EV tabnew $MYVIMRC <bar> lcd %:p:h
command! SV source $MYVIMRC

command! -nargs=1 -complete=customlist,functions#tags#BtagComplete Btag call functions#tags#Btag(<f-args>)

command! -nargs=1 -complete=customlist,functions#global#MRUComplete ME call functions#global#MRU('edit', <f-args>)
command! -nargs=1 -complete=customlist,functions#global#MRUComplete MS call functions#global#MRU('split', <f-args>)
command! -nargs=1 -complete=customlist,functions#global#MRUComplete MV call functions#global#MRU('vsplit', <f-args>)
command! -nargs=1 -complete=customlist,functions#global#MRUComplete MT call functions#global#MRU('tabedit', <f-args>)

command! -nargs=+ Replace call functions#global#Replace(<f-args>)

"""""""""""""""""""
" PLUGIN SETTINGS "
"""""""""""""""""""

let g:snippets_dir = '~/.vim/snippets/'

let g:netrw_winsize   = '30'
let g:netrw_banner    = 0
let g:netrw_keepdir   = 1
let g:netrw_liststyle = 3

let g:html_indent_script1 = 'inc'
let g:html_indent_style1  = 'inc'
let g:html_indent_inctags = 'html,body,head,tbody,p'

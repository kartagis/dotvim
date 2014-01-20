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

set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*.tar.*
set wildignorecase
set wildmode=list:full

set statusline=%<\ %n\ %f\ %m%r%y%=\ Line:\ \%l\/\%L\ Column:\ \%c\ 

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set foldlevelstart=999
set foldmethod=indent
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

set t_vb=
set visualbell

set splitbelow
set splitright

set completeopt+=longest
set cursorline
set fileformats=unix,dos,mac
set formatoptions+=1
set lazyredraw
set mouse=a
set nostartofline
set noswapfile
set nrformats-=octal
set previewheight=4
set scrolloff=4
set virtualedit=block
set winheight=999

augroup VIMRC
  autocmd!

  autocmd FocusLost,InsertLeave * call functions#AutoSave()

  autocmd GUIEnter * set vb t_vb=

  autocmd BufLeave * let b:winview = winsaveview()
  autocmd BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif

  autocmd BufEnter * call matchadd("Error", "\\s\\+$", -1)

augroup END

"""""""""""""""""""""""""""""""""
" ENVIRONMENT-SPECIFIC SETTINGS "
"""""""""""""""""""""""""""""""""

let os=substitute(system('uname'), '\n', '', '')

if has('gui_running')
  colorscheme sorcerer

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
  if &t_Co >= 256
    colorscheme sorcerer

  elseif &t_Co < 256
    colorscheme sorcerer_16

  endif

  if os == 'Darwin'
    set clipboard^=unnamed

  elseif os == 'Linux'
    set clipboard^=unnamedplus

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

" inoremap <leader>, <C-x><C-o>
" inoremap <leader>: <C-x><C-f>
" inoremap <leader>- <C-x><C-l>

nnoremap <leader>d "_d
xnoremap <leader>d "_d

xnoremap <leader>p "_dP

nnoremap Y y$

xnoremap > >gv
xnoremap < <gv

" merci twal
onoremap w :<C-u>norm w<CR>
onoremap W :<C-u>norm W<CR>

nnoremap <leader>a :Tabularize<Space>/
xnoremap <leader>a :Tabularize<Space>/

nnoremap <leader><Space><Space> O<C-o>j<C-o>o<C-o>k<Esc>

nnoremap j      gj
nnoremap k      gk
nnoremap <Down> gj
nnoremap <up>   gk

nnoremap gb  :buffers<CR>:b<Space>
nnoremap gsb :buffers<CR>:sb<Space>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

nnoremap <leader>k      :move-2<CR>==
nnoremap <leader>j      :move+<CR>==
nnoremap <leader><Up>   :move-2<CR>==
nnoremap <leader><Down> :move+<CR>==
xnoremap <leader>k      :move-2<CR>gv=gv
xnoremap <leader>j      :move'>+<CR>gv=gv
xnoremap <leader><Up>   :move-2<CR>gv=gv
xnoremap <leader><Down> :move'>+<CR>gv=gv

nnoremap <leader>h       "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader>l       "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
nnoremap <leader><Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>

nnoremap <leader>$ :tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <leader>* :ptjump /<c-r>=expand('<cword>')<CR><CR>

"""""""""""""""""
" EXPERIMENTAL! "
"""""""""""""""""

nnoremap <leader>r :'{,'}s/\<<C-r>=expand('<cword>')<CR>\>/
nnoremap <leader>R :%s/\<<C-r>=expand('<cword>')<CR>\>/

xnoremap <leader>r :<C-u>'{,'}s/<C-r>=functions#GetVisualSelection()<CR>/
xnoremap <leader>R :<C-u>%s/<C-r>=functions#GetVisualSelection()<CR>/

nnoremap <leader>o *``
xnoremap <leader>o <Esc>:let @/ = functions#GetVisualSelection()<CR>

xnoremap <leader>q :s/<C-r>=@/<CR>/

nnoremap <leader>Q :call functions#ReplaceThis(0)<CR>
xnoremap <leader>Q :call functions#ReplaceThis(1)<CR>

nnoremap <leader>x *``cgn
nnoremap <leader>X #``cgN
xnoremap <leader>x <Esc>:let @/ = functions#GetVisualSelection()<CR>cgn
xnoremap <leader>X <Esc>:let @/ = functions#GetVisualSelection()<CR>cgN

inoremap <expr> <CR> functions#SmartEnter()

" nnoremap <End>  :cnext<CR>zv
" nnoremap <Home> :cprevious<CR>zv
nnoremap <Home> :call functions#WrapCommand("up")<CR>
nnoremap <End>  :call functions#WrapCommand("down")<CR>

nnoremap <PageUp>   :bp<CR>
nnoremap <PageDown> :bn<CR>

set wildcharm=<C-z>
set path=**

nnoremap <leader>f :find *
nnoremap <leader>F :find <C-R>=expand('%:h').'/*'<CR>
nnoremap <leader>s :sfind *
nnoremap <leader>S :sfind <C-R>=expand('%:h').'/*'<CR>
nnoremap <leader>v :vert sfind *
nnoremap <leader>V :vert sfind <C-R>=expand('%:h').'/*'<CR>

nnoremap <leader>b :buffer <C-z><S-Tab>
nnoremap <leader>B :sbuffer <C-z><S-Tab>

nnoremap <leader>t :tjump /
nnoremap <leader>T :Btag <C-z><S-Tab>

nnoremap <leader>p :ptjump /

nnoremap <leader>me :MRU <C-z><S-Tab>
nnoremap <leader>ms :SMRU <C-z><S-Tab>
nnoremap <leader>mv :VMRU <C-z><S-Tab>

nnoremap <F6> :execute "Ex <bar> call search('" . expand('%:t') . "') <bar> normal! zz"<CR>

"""""""""""""""""""""""
" CUSTOM TEXT-OBJECTS "
"""""""""""""""""""""""

for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%' ]
  execute 'xnoremap i' . char . ' :<C-u>silent! normal! T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-u>silent! normal! F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

"""""""""""""""""""
" CUSTOM COMMANDS "
"""""""""""""""""""

command! Tagit      call functions#Tagit()
command! Bombit     call functions#Bombit()

command! ToUnix     call functions#ToUnix()

command! SS         echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')

command! LCD        lcd %:p:h
command! CD         cd %:p:h

" sharing is caring
command! VPF        execute "w !vpaste ft=" . &filetype
command! -range VPV execute "'<,'>w !vpaste ft=" . &filetype
command! CMD        let @+ = ":" . @:

command! Trailer    mark `|%s/\s\+$//|normal! ``

command! Todo       tselect TODO
command! Fixme      tselect FIXME

command! EV         tabnew $MYVIMRC
command! SV         source $MYVIMRC

command! -nargs=1 -complete=customlist,functions#ListBufTags Btag call functions#Btag(<f-args>)

command! -nargs=1 -complete=customlist,functions#ListRecentFiles MRU  call functions#MRU("edit", <f-args>)
command! -nargs=1 -complete=customlist,functions#ListRecentFiles SMRU call functions#MRU("split", <f-args>)
command! -nargs=1 -complete=customlist,functions#ListRecentFiles VMRU call functions#MRU("vsplit", <f-args>)

command! -nargs=1 Qfdo try | silent cfirst |
\ while 1 | execute <q-args> | silent cnext | endwhile |
\ catch /^Vim\%((\a\+)\)\=:E\%(553\|42\):/ |
\ endtry

command! -nargs=1 Qfdofile try | silent cfirst |
\ while 1 | execute <q-args> | silent cnfile | endwhile |
\ catch /^Vim\%((\a\+)\)\=:E\%(553\|42\):/ |
\ endtry

"""""""""""""""""""
" PLUGIN SETTINGS "
"""""""""""""""""""

let g:snippets_dir = '~/.vim/snippets/'

let g:netrw_winsize   = '999'
let g:netrw_banner    = 0
let g:netrw_keepdir   = 1
let g:netrw_liststyle = 3

let g:syntastic_check_on_open       = 0
let g:syntastic_enable_balloons     = 0
let g:syntastic_enable_highlighting = 0
let g:syntastic_auto_jump           = 1
let g:syntastic_auto_loc_list       = 1
let g:syntastic_enable_signs        = 1
let g:syntastic_mode_map            = {
  \ 'mode'              : 'active',
  \ 'active_filetypes'  : ['javascript'],
  \ 'passive_filetypes' : ['css', 'python', 'html', 'xhtml', 'php']
  \ }

let g:html_indent_script1 = "inc"
let g:html_indent_style1  = "inc"
let g:html_indent_inctags = "html,body,head,tbody,p"

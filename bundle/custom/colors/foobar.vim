    hi clear

    if exists('syntax_on')
      syntax reset
    endif

    let colors_name = 'foobar'

    hi Normal           ctermbg=NONE ctermfg=7    cterm=NONE      guibg=NONE    guifg=#c0c0c0 gui=NONE
    hi NonText          ctermbg=NONE ctermfg=3    cterm=NONE      guibg=NONE    guifg=#c0c0c0 gui=NONE

    hi Comment          ctermbg=NONE ctermfg=3    cterm=NONE      guibg=NONE    guifg=#808080 gui=NONE
    hi Constant         ctermbg=NONE ctermfg=3    cterm=NONE      guibg=NONE    guifg=#ff0000 gui=NONE
    hi Error            ctermbg=NONE ctermfg=3    cterm=reverse   guibg=NONE    guifg=#800000 gui=reverse
    hi Identifier       ctermbg=NONE ctermfg=3    cterm=NONE      guibg=NONE    guifg=#008080 gui=NONE
    hi Ignore           ctermbg=NONE ctermfg=NONE cterm=NONE      guibg=NONE    guifg=NONE    gui=NONE
    hi PreProc          ctermbg=NONE ctermfg=3    cterm=NONE      guibg=NONE    guifg=#00ffff gui=NONE
    hi Special          ctermbg=NONE ctermfg=3    cterm=NONE      guibg=NONE    guifg=#008000 gui=NONE
    hi Statement        ctermbg=NONE ctermfg=3    cterm=NONE      guibg=NONE    guifg=#800080 gui=NONE
    hi String           ctermbg=NONE ctermfg=3    cterm=NONE      guibg=NONE    guifg=#00ff00 gui=NONE
    hi Todo             ctermbg=NONE ctermfg=NONE cterm=reverse   guibg=NONE    guifg=NONE    gui=reverse
    hi Type             ctermbg=NONE ctermfg=3    cterm=NONE      guibg=NONE    guifg=#ff00ff gui=NONE
    hi Underlined       ctermbg=NONE ctermfg=3    cterm=underline guibg=NONE    guifg=#ffffff gui=underline

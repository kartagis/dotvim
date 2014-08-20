inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<C-r>=TriggerSnippet()\<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-r>=BackwardsSnippet()\<CR>"

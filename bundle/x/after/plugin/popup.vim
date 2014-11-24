inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : exists("g:loaded_snips") ? "\<C-r>=TriggerSnippet()\<CR>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : exists("g:loaded_snips") ? "\<C-r>=BackwardsSnippet()\<CR>" : "\<S-Tab>"

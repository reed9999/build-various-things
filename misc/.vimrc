syntax on
set autoindent
set expandtab 
set tabstop=4 
set shiftwidth=4 
set softtabstop=4
set nu
colorscheme desert
set dictionary=some-project-specific-dictionary.txt
menu File.TODO :e ~/todo/TODO.txt<CR>

" see http://vimdoc.sourceforge.net/htmldoc/vim_faq.html#21.4
" or wherever it has moved to.
" These iabbrev's are like what JB calls Live Templates.
iabbrev dts <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
iabbrev die <C-R>="die ('PHILIP requested termination');"<CR>

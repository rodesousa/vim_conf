execute pathogen#infect()

syntax enable
set background=light

highlight comment ctermfg=red

set ruler
set nu
set paste
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set autoindent
set smartindent

nmap <F12> :set invnumber<CR>
nmap <C-k> :Vex<CR>
nmap <C-b> zfip
nmap <C-l> =ip
nmap <C-l><C-a> ggVG=
nmap X diw
imap <C-w> :wa!<CR>
nmap <C-x> :xa!<CR>

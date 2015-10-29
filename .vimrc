execute pathogen#infect()

syntax enable
set background=light

highlight comment ctermfg=red

set ruler
set nu
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent

"number lines or not
nmap <F12> :set invnumber<CR>

"NERDTREE SUX
nmap <C-k> :Vex<CR>

"zf a paragraph
nmap <C-b> zfip

"indent code
nmap <C-l> =ip
nmap <C-l><C-a> ggVG=

"add and remove commentary
nmap jj (<C-v>)x
map <C-_> (<C-v>)kI#<Esc><Esc>

"save
map ZA :wa!<CR>
map ZZ :xa!<CR>

"not validate
"nmap X diw

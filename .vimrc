execute pathogen#infect()

syntax enable
set background=light

highlight comment ctermfg=red

set ruler
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent

"number lines or not
set nu
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
nmap <C-_><C-a> (<C-v>)kI#<Esc><Esc>
nmap <C-_> I#<Esc>

"save
map ZA :wa!<CR>
map ZZ :xa!<CR>

"not validate
"nmap X diw

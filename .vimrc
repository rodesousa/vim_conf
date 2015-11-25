" pathogen
execute pathogen#infect() 

" option
set nocompatible                            " désactivation de la compatibilité avec vi
set background=dark                         " fond sombre
colorscheme desert                          " couleur
syntax enable                               " activation de la coloration syntaxique
set number                                  " numérotation des lignes
set autoindent                              " indentation automatique avancée
set smartindent                             " indentation plus intelligente
set ruler
set showcmd                                 " affiche la commande en cours
set shiftwidth=4                            " nombre de tabulation pour l'indentation
set tabstop=4					            " nombre d'espace pour une tabulation
filetype plugin indent on                   " détection automatique du type de fichier
highlight comment ctermfg=red
set cursorline                              " afficher la ligne courante
hi CursorLine guibg=#4d4d4d                 " couleur de fond pour la ligne courante
set hlsearch                                " surligne les résultats de la recherche
set guifont=Courier\ New\ 10                " police de caractère

" en test
set backspace=indent,eol,start              " autorisation du retour arrière
set showmatch                               " vérification présence ([ ou { à la frappe de )] ou }
autocmd FileType text setlocal textwidth=72 " les fichiers de type .txt sont limites à 72 caractères par ligne
set foldcolumn=2                            " repère visuel pour les folds
let Tlist_Ctags_Cmd = '/usr/bin/ctags'      " implémentation de ctags, nécessaire pour le plugin 'taglist'
set incsearch                               " recherche incrémentale
set ignorecase                              " ne pas prendre en compte la casse lors des recherches
set nolist					                " on n'affiche pas les caractères non imprimables
set listchars=eol:¶,tab:..,trail:~		    " paramétrage des caractères non imprimables au cas où l'on souhaiterait les afficher
set expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""
"Repositionner le curseur à l'emplacement de la
"dernière édition
""""""""""""""""""""""""""""""""""""""""""""""""""
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

 
""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour copier, couper, coller
"et sélectionner
""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-x> "+x
map <C-c> "+y

" inverse nbr ligne
nmap <F12> :set invnumber<CR>

" NERDTREE SUX
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


" OCaml
"let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
"execute "set rtp+=" . g:opamshare . "/merlin/vim"

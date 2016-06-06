""""""""""""""""""""""""""""""""""""""""""""""""""
" pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect() 


""""""""""""""""""""""""""""""""""""""""""""""""""
" option general vim
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                            " désactivation de la compatibilité avec vi
set number                                  " numérotation des lignes
set laststatus=2                            " afficher toujours la barre de status
set showcmd                                 " affiche la commande en cours


""""""""""""""""""""""""""""""""""""""""""""""""""
" option color vim
""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark                         " fond sombre
colorscheme desert                          " couleur
syntax enable                               " activation de la coloration syntaxique
hi CursorLine guibg=#4d4d4d                 " couleur de fond pour la ligne courante
set hlsearch                                " surligne les résultats de la recherche
set guifont=Courier\ New\ 10                " police de caractère
set cursorline                              " afficher la ligne courante

""""""""""""""""""""""""""""""""""""""""""""""""""
" indentation
""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent                              " indentation automatique avancée
set smartindent                             " indentation plus intelligente
set ruler
set shiftwidth=4                            " nombre de tabulation pour l'indentation
set tabstop=4					            " nombre d'espace pour une tabulation


""""""""""""""""""""""""""""""""""""""""""""""""""
" conf plugin
""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on                   " détection automatique du type de fichier


""""""""""""""""""""""""""""""""""""""""""""""""""
" en test
""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start              " autorisation du retour arrière
set showmatch                               " vérification présence ([ ou { à la frappe de )] ou }
autocmd FileType text setlocal textwidth=72 " les fichiers de type .txt sont limites à 72 caractères par ligne
set foldcolumn=2                            " repère visuel pour les folds
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


"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""shortcut perso
"""""""""""""""""""""""""""""""""""""""""""""""""
" inverse nbr ligne
nmap <F12> :set invnumber<CR>
" NERDTREE 
nmap <C-k> :NERDTreeToggle<CR>
"zf a paragraph
nmap <C-S-b> zfip
"indent paragraph code
nmap <C-l> =ip
"indent all code
nmap <C-l><C-a> ggVG=
" suppr commentaire
nmap jj (<C-v>)x
" add commentaire sur un para
nmap <C-_><C-a> (<C-v>)kI#<Esc><Esc>
" add commentaire sur une ligne
nmap <C-_> I#<Esc>
"save
map ZA :wa!<CR>
map ZZ :xa!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Omni-completion par CTRL-X_CTRL-O
""""""""""""""""""""""""""""""""""""""""""""""""""
au filetype html        set omnifunc=htmlcomplete#CompleteTags
au filetype css         set omnifunc=csscomplete#CompleteCSS
au filetype javascript  set omnifunc=javascriptcomplete#CompleteJS
au filetype c           set omnifunc=ccomplete#Complete
au filetype php         set omnifunc=phpcomplete#CompletePHP
au filetype ruby        set omnifunc=rubycomplete#Complete
au filetype sql         set omnifunc=sqlcomplete#Complete
au filetype python      set omnifunc=pythoncomplete#Complete
au filetype xml         set omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping et configuration pour la liste des tags
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F8> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""
" OCaml
""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
"execute \"set rtp+=" . g:opamshare . \"/merlin/vim"

""""""""""""""""""""""""""""""""""""""""""""""""""
"Personnalisation de la barre de statut
""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%t%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [FENC=%{&fileencoding}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]

""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:acp_enableAtStartup = 1                           " enable AutoComplPop.
let g:neocomplete#enable_at_startup = 1                 " Use neocomplete.
let g:neocomplete#enable_smart_case = 1                 " Use smartcase.
let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length.
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'


""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*.class,*/target/*,export

""""""""""""""""""""""""""""""""""""""""""""""""""
" ab
""""""""""""""""""""""""""""""""""""""""""""""""""
ab namerds Roberto De Sousa
ab mailrds dessroberto@gmail.com

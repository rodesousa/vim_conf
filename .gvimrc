""""""""""""""""""""""""""""""""""""""""""""""""""
" Fichier .gvimrc de Nicolas Gressier
" Cr�� le 29 avril 2007
" Yoshidu62@gmail.com
" Mise � jour : 14/05/2010
" Version 2.8
""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""
"Diverses options
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                                  " d�sactivation de la compatibilit� avec vi
set background=dark                               " fond sombre
colorscheme desert                                " couleur
syntax enable                                     " activation de la coloration syntaxique
set number                                        " num�rotation des lignes
set autoindent                                    " indentation automatique avanc�e
set smartindent                                   " indentation plus intelligente
set laststatus=2                                  " ajoute une barre de status
set backspace=indent,eol,start                    " autorisation du retour arri�re
set history=50                                    " historique de 50 commandes
set ruler                                         " affiche la position courante au sein du fichier
set showcmd                                       " affiche la commande en cours
set shiftwidth=4                                  " nombre de tabulation pour l'indentation
set tabstop=4					  " nombre d'espace pour une tabulation
set showmatch                                     " v�rification pr�sence ([ ou { � la frappe de )] ou }
filetype plugin indent on                         " d�tection automatique du type de fichier
autocmd FileType text setlocal textwidth=72       " les fichiers de type .txt sont limites � 72 caract�res par ligne
set fileformats=unix,mac,dos                      " gestion des retours chariot en fonction du type de fichier
"set viewdir=/home/ngressier/.vim/saveview/        " r�pertoire pour sauvegarder les vues, utiles pour les replis manuels
set cursorline                                    " afficher la ligne courante
hi CursorLine guibg=#4d4d4d                       " couleur de fond pour la ligne courante
set foldcolumn=2                                  " rep�re visuel pour les folds
let Tlist_Ctags_Cmd = '/usr/bin/ctags'      	  " impl�mentation de ctags, n�cessaire pour le plugin 'taglist'
set guioptions-=T                                 " supprime la barre d'outils
set incsearch                                     " recherche incr�mentale
set hlsearch                                      " surligne les r�sultats de la recherche
set ignorecase                                    " ne pas prendre en compte la casse lors des recherches
set guifont=Courier\ New\ 10                      " police de caract�re
set nolist					  " on n'affiche pas les caract�res non imprimables
set listchars=eol:�,tab:..,trail:~		  " param�trage des caract�res non imprimables au cas o� l'on souhaiterait les afficher



""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour d�sactiver le surlignage des
"r�sultats d'une recherche
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-A-N> :noh<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""
""Mapping pour naviguer dans les lignes coup�es
"""""""""""""""""""""""""""""""""""""""""""""""""""
"map <A-DOWN> gj
"map <A-UP> gk
"imap <A-UP> <ESC>gki
"imap <A-DOWN> <ESC>gkj



""""""""""""""""""""""""""""""""""""""""""""""""""
"Repositionner le curseur � l'emplacement de la
"derni�re �dition
""""""""""""""""""""""""""""""""""""""""""""""""""
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
 
 
 
""""""""""""""""""""""""""""""""""""""""""""""""""
"Chargement des types de fichiers
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.txt set filetype=text             " chargement du type de fichier pour le format txt



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
"Personnalisation de la barre de statut
""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%t%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [FENC=%{&fileencoding}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]\ [TAG=%{Tlist_Get_Tagname_By_Line()}]



""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping et configuration pour la liste des tags
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1		" vim se ferme si il reste uniquement la fen�tre des tags
let Tlist_Process_File_Always = 1	" activation permanente du plugin pour la barre de statut
let Tlist_Use_Right_Window = 1		" affiche les tags sur le c�t� droit de l'�cran



""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Sauvegarde automatique des vues, utiles pour les
"""replis manuels
""""""""""""""""""""""""""""""""""""""""""""""""""""
""au BufWinLeave *.* mkview
""au BufWinEnter *.* silent loadview



""""""""""""""""""""""""""""""""""""""""""""""""""
"Map pour se d�placer dans les onglets
""""""""""""""""""""""""""""""""""""""""""""""""""
map <tab> gt



""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour ins�rer la date du jour
""""""""""""""""""""""""""""""""""""""""""""""""""
imap \date  <C-R>=strftime("%d/%m/%Y")<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping pour copier, couper, coller
"et s�lectionner
""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-x> "+x
map <C-c> "+y
map <C-p> "+gP
map <C-a> ggVG



""""""""""""""""""""""""""""""""""""""""""""""""""
"Dictionnaire fran�ais
"Liste des propositions par CTRL-X_CTRL-K
""""""""""""""""""""""""""""""""""""""""""""""""""
set dictionary+=/usr/share/dict/french



""""""""""""""""""""""""""""""""""""""""""""""""""
"Correction orthographique
"Liste des propositions par CTRL-X_s
""""""""""""""""""""""""""""""""""""""""""""""""""
set spellsuggest=5                                   " on affiche uniquement les 5 premi�res propositions 
autocmd BufEnter *.txt set spell                     " correction orthographique dans les fichiers textes
autocmd BufEnter *.txt set spelllang=fr,en           " correction orthographique dans les fichiers textes



""""""""""""""""""""""""""""""""""""""""""""""""""
"Infos-Bulles
""""""""""""""""""""""""""""""""""""""""""""""""""
function! FoldSpellBalloon()
    let foldStart = foldclosed(v:beval_lnum)
    let foldEnd = foldclosedend(v:beval_lnum)
    let lines = []
    "Detect if we are in a fold
    if foldStart < 0
	"Detect if we are on a misspelled word
	let lines = spellsuggest(spellbadword(v:beval_text)[0], 5, 0)
    else
	"We are in a fold
	let numLines = foldEnd - foldStart + 1
	"If we have too many lines in fold, show only the first 14
	"and the last 14 lines
	if(numLines > 31)
	    let lines = getline(foldStart, foldStart + 14)
	    let lines += ['-- Snipped ' . (numLines - 30) . ' lines --']
	    let lines += getline(foldEnd - 14, foldEnd)
	else
	    "Less than 30 lines, lets show all of them
	    let lines = getline(foldStart, foldEnd)
	endif
    endif
    "Return result
    return join(lines, has("balloon_multiline") ? "\n" : " ")
endfunction

set balloonexpr=FoldSpellBalloon()
set ballooneval



""""""""""""""""""""""""""""""""""""""""""""""""""
"Nom du fichier en cours dans l'onglet pour GVim
""""""""""""""""""""""""""""""""""""""""""""""""""
function! ShortTabLabel()
	let bufnrlist = tabpagebuflist(v:lnum)
	"Show only the first 18 letters of the name + ..
	let label = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
	let filename = fnamemodify(label,':t')
	"Only add .. if string is more than 20 letters
	if strlen(filename) >=20
		let ret=filename[0:17].'..'
	else
		let ret = filename
	endif
	return ret
endfunction

set guitablabel=%{ShortTabLabel()}



""""""""""""""""""""""""""""""""""""""""""""""""""
"Modification de l'affichage des replis
""""""""""""""""""""""""""""""""""""""""""""""""""
function! MyFoldFunction()
    let line = getline(v:foldstart)
    "Cleanup unwanted things in first line
    let sub = substitute(line, '/\*\|\*/\|^\s+', '', 'g')
    "Calculate lines in folded text
    let lines = v:foldend - v:foldstart + 1
    return v:folddashes.sub.' {...'.lines.' Lines...}'
endfunction

set foldtext=MyFoldFunction()



""""""""""""""""""""""""""""""""""""""""""""""""""
"Poser une marque visible avec F7
""""""""""""""""""""""""""""""""""""""""""""""""""
hi Mark guibg=indianred guifg=white gui=bold cterm=bold ctermfg=7 ctermbg=1
sign define mark text=!> texthl=Mark
map <F7> :exe 'sign place 001 name=mark line='.line(".").' buffer='.winbufnr(0)<CR>
map <C-F7> :sign unplace<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""
"Couleur pour les templates
""""""""""""""""""""""""""""""""""""""""""""""""""
hi def link Todo TODO
syn keyword Todo TODO FIXME XXX DEBUG




"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝

"---------------------------------vim config---------------------------- 
syntax on 
set number 
set mouse=a
set clipboard=unnamed
set clipboard+=unnamedplus
set go+=a
set showcmd
set encoding=UTF-8
set ruler

set showmatch
set sw=2
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
"Get out of insert mode 
"Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>l
"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line xnoremap K :move '<-2<CR>gv-gv xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv
" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> "+p
imap <C-v> "+p
" vmap <C-v> c<ESC>"+p
" imap <C-v> <ESC>"+pa

"-------------------------------Sources-------------------------------
source ~/AppData/Local/nvim/plugins/plugins.vim
source ~/AppData/Local/nvim/plugins/plug-config.vim
source ~/AppData/Local/nvim/themes/onedark.vim
"--------------------------------Plugins Config--------------------------------------------
"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>e :FZF<CR>
nmap <leader>rg :Rg --files<CR>
"clean search (highlight)
nmap <leader><space><space> :noh<CR>
"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]

"abrir Nerdtree
"open nerdtree
nmap <Leader>nt :NERDTreeToggle<CR>

"open cocExplorer 
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>
"--gruvbox config--
colorscheme gruvbox
"colorscheme onedark
let g:gruvbox_contrast_dark = "hard"

set cmdheight=1
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 0
"colorscheme tokyonight

"Close tags automatically
"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'
"-----------------------------------------------------------------


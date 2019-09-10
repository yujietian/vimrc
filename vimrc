set tags=./tags; 
set helplang=cn 
set autochdir 
set cindent 
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s 
set expandtab 
set fileencodings=ucs-bom,utf8,GB18030,Big5,latin1 
set fileformat=unix 
set cursorline 
set history=50 
set hlsearch 
set ignorecase 
set incsearch 
set laststatus=2 
set nobackup 
set nocompatible 
set number 
"set paste 
set ruler 
set shiftwidth=4 
set showcmd 
set showmatch 
set smartcase 
set smartindent 
set softtabstop=4 
set statusline=%F%m%r,\ %Y,\ %{&fileformat}\ \ \ ASCII=\%b,HEX=\0x\%B\ \ \ %l,%c%V\ \ %p%% 
set tabstop=4 
colorscheme desert 
"set nocscopeverbose 
syntax enable 
syntax on 
filetype plugin indent on 
set completeopt=longest,menu 
 
"hi Cursorline ctermbg=Blue guibg=#3CF60B 
":map <C-F9> :!g++ % -o %<<CR> 
:map <F9> :!g++ -Wall -ggdb % -o %<<CR> 
:map <F10> :!./%<<CR> 
:map <C-c> :!clear<CR> 
:map <F6> :tabprevious<CR> 
:map <F7> :tabnew<CR> 
:map <F8> :tabnext<CR> 
:map <F2> :w<CR> 
 
"runtime! debian.vim 
 
"if filereadable("/etc/vim/vimrc.local") 
"  source /etc/vim/vimrc.local 
"endif 
 
if &term=="xterm" 
    set t_Co=8 
    set t_Sb=^[[4%dm 
    set t_Sf=^[[3%dm 
endif 
 
""""""""""""""""""""""""""" 
"  Use mouse on console 
""""""""""""""""""""""""""" 
 
if has("wildmenu") 
    set mouse =a 
endif 
" Set text-mode menu 
if has("wildmenu") 
    " Use menu 
        source $VIMRUNTIME/menu.vim 
    set cpoptions-=< 
    set wildcharm=<C-Z> 
    map <F4> :emenu <C-Z> 
endif 
 
"""""""""""""""""""""""""""""" 
   " Tag list (ctags) 
"""""""""""""""""""""""""""""" 
nnoremap <silent> <F8> :TlistToggle<CR> 
let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
let Tlist_Show_One_File = 1 
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Use_Left_Window = 0 
let Tlist_Sort_Type = 'name' 
let Tlist_Auto_Open = 1 
let Tlist_Auto_Update = 1 
let Tlist_WinWidth = 25 
let Tlist_Use_Right_Window= 1 
let Tlist_File_Fold_Auto_Close=1 
if $VIM_HATE_SPACE_ERRORS != '0' 
    let c_space_errors=1 
endif 
 
"""""""""""""""""""""""""""""""" 
    " Window manager settings 
"""""""""""""""""""""""""""""""" 
nmap wm :WMToggle<CR> 
map <c-w><c-f> :FirstExplorerWindow<cr> 
map <c-w><c-b> :BottomExplorerWindow<cr> 
let persistentBehaviour=0 
let winManagerWidth=25 
 

"behave mswin
"lang english




"set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set fileencodings=utf-8,cp1251,koi8-r,cp866
set encoding=utf-8
"  setglobal fileencoding=utf-8 
  "setglobal bomb
 " set fileencodings=ucs-bom,utf-8,cp1251,koi8-r,cp866


set nocp
set nu
set ruler
set guioptions-=T
set background=dark
colorscheme xoria256
set guifont=Liberation\ Mono\ 12
"filetype on
filetype plugin on
filetype indent on
syntax on
set mouse=a


filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'vim-scripts/a.vim'
Bundle 'gmarik/Vundle.vim'
Bundle 'sandeepcr529/Buffet.vim'
Bundle 'ryanss/vim-hackernews'
Bundle 'drmikehenry/vim-headerguard'
Bundle 'hsitz/VimOrganizer'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/emmet-vim'
Bundle 'dleonard0/pony-vim-syntax'
Bundle 'Shougo/deoplete.nvim'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'chrisbra/csv.vim'
Bundle 'Keithbsmiley/investigate.vim'
Bundle 'alvan/vim-closetag'
Bundle 'pangloss/vim-javascript'
Bundle 'maxmellon/vim-jsx-pretty'
Bundle 'ryanoasis/vim-devicons'
Bundle 'tiagofumo/vim-nerdtree-syntax-highlight'
Bundle 'mhinz/vim-startify'
Bundle 'tpope/vim-surround'
<<<<<<< HEAD
Bundle 'posva/vim-vue'
Bundle 'w0rp/ale'
Bundle 'SirVer/ultisnips'

" Currently, es6 version of snippets is available in es6 branch only
Bundle 'letientai299/vim-react-snippets', { 'branch': 'es6' }
Bundle 'honza/vim-snippets'


||||||| merged common ancestors
=======
Bundle 'posva/vim-vue'
Bundle 'w0rp/ale'
>>>>>>> fb6c74f9e51307c0a0e72fb1e4d3e3a2eace344a
"Bundle 'LucHermitte/lh-vim-lib'
"Bundle 'LucHermitte/lh-tags'
"Bundle 'LucHermitte/lh-dev'
"Bundle 'LucHermitte/lh-brackets'
"Bundle 'LucHermitte/vim-refactor'

call vundle#end()            " required
filetype plugin indent on    " required
set clipboard=unnamedplus,unnamed
"compiler gcc
"set makeprg=mingw32-make

"nmap <TAB> gt
"nmap <S-TAB> gT


"//////////////
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set et
set nowrap


set ai
set cin " автоотступы
set showmatch
set hlsearch
set incsearch
set ignorecase
"//////////////

"nmap <C-N> :NERDTreeToggle<CR>
"let NERDTreeChDirMode=2
"let NERDTreeIgnore=['\.o$']
let NERDTreeMinimalUI=1
let NERDTreeSortOrder = ['\/$','\.h$', '\.cpp$', '*', '\.exe$']
let NERDTreeIgnore=['node_modules$']

"let xptemplate_brace_complete=0


nmap <C-Right> :bn<CR>
nmap <C-Left> :bp<CR>

"map <C-left> :bprev<CR>
"map <C-right> :bnext<CR> 

nnoremap <C-s> :update<CR>

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js, *.vue"

if has('persistent_undo')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif

let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {'vue': ['eslint', 'vls'], 'javascript': ['eslint']}
"set laststatus=2
"let g:buftabs_in_statusline=1
"let g:buftabs_only_basename=1
"set statusline=%=buffers:\ %{buftabs#statusline()}
"let g:buftabs_active_highlight_group="MoreMsg"

"let g:showfuncctagsbin = "E:\\usr\\ctags\\ctags.exe"
"let g:tagbar_ctags_bin = "E:\\usr\\ctags\\ctags.exe"
"nmap <F8> :TagbarToggle<CR>`
"let g:VCSCommandGitExec = 'git'

"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview


"set completeopt=menuone,menu
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
""let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1


"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 


"let OmniCpp_NamespaceSearch = 2
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
"let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif


"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
"au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl set syntax=glsl 

"map <C-F12> :!E:\usr\ctags\ctags.exe -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
"set tags+=./tags
"let g:clang_complete_copen=1
"let g:clang_use_library=1
"let g:clang_close_preview=1
"
"let g:indent_guides_auto_colors = 0
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size  = 1

nnoremap <F1> :call investigate#Investigate()<CR>

hi IndentGuidesEven ctermbg=darkgray
hi IndentGuidesOdd  ctermbg=black


if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif


func! Insert_gates()
    let gatename = "_" . substitute(toupper(expand("%:t:r")), "\\.", "_", "g") . "_HEADER_"
    exec "normal! i#ifndef " . gatename
    exec "normal! o#define " . gatename . " "
    exec "normal! Go#endif"
    normal! kk
endfunc

map <F12>g : call Insert_gates()<CR>
nnoremap  <F12>f       :exe ':silent !firefox %'<CR><C-l>
nnoremap  <F12>c       :exe ':silent !chromium %'<CR><C-l>
"if has('cscope')
"  set cscopetag cscopeverbose
"
"  if has('quickfix')
"    set cscopequickfix=s-,c-,d-,i-,t-,e-
"  endif
"
"  cnoreabbrev csa cs add
"  cnoreabbrev csf cs find
"  cnoreabbrev csk cs kill
"  cnoreabbrev csr cs reset
"  cnoreabbrev css cs show
"  cnoreabbrev csh cs help
"  if filereadable("cscope.out")
"    silent exec "cs add ./cscope.out " . getcwd()
"  endif
"endif

map <S-Tab> :Bufferlistsw<CR>

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()



map <f2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <F8> :TagbarToggle<CR>
map <silent> <F4> :syntax sync fromstart<CR>

<<<<<<< HEAD
imap cll console.log()<Esc>==f(a
||||||| merged common ancestors
=======

:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-l> :wincmd l<CR>


"let b:ale_fixers = {'javascript': ['eslint'], 'vue': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
>>>>>>> fb6c74f9e51307c0a0e72fb1e4d3e3a2eace344a

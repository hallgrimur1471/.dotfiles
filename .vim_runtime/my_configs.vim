" enable mouse support
set mouse=""

" indent using 2 or 4 spaces:
set shiftwidth=2
"set shiftwidth=4

" shortcut for reloading vim config changes
map <leader>re :source ~/.vimrc<CR>

" remap <ESC> button
inoremap jk <ESC>
inoremap kj <ESC>
 
" display line numbers
set number
set numberwidth=3
set relativenumber

" show warning at 80+ line lengths
highlight OverLength ctermbg=blue ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" hotkeys to turn on/off warning at 80+ line lengths
map ,ro :match OverLength none<CR>
map ,rl :match OverLength /\%81v.\+/<CR>

" allow leaving modified buffers
set hidden

" Disable comfortable_motion's scroll animation
"if !exists('g:comfortable_motion_no_default_key_mappings') ||
"\  !g:comfortable_motion_no_default_key_mappings
"  nunmap <silent> <C-d>
"  nunmap <silent> <C-u>
"endif
let g:comfortable_motion_interval = 1200.0 / 60
let g:comfortable_motion_friction = 220.0
let g:comfortable_motion_air_drag = 0.0

" Travel faster
nnoremap <C-e> 4<C-e>
nnoremap <C-y> 4<C-y>

" Save in insert mode
inoremap <silent> <C-e> <C-O>:update<CR>

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" configure NERDTree width
let NERDTreeWinSize=19

" Ignore some file types with NERDTree
let NERDTreeIgnore=['\.pyc$']

" set completeopt=menu,menuone,preview,noselect,noinsert
let g:ycm_autoclose_preview_window_after_insertion=1

" ALE config
let g:ale_linters={"python": ["flake8", "mypy", "pylint"], "cpp": []}
let g:ale_fixers={"python": ["black"], "cpp": ["clang-format"]}

let g:ale_python_flake8_options="--max-line-length=80 --ignore=W503,E203,E712,E701,E901,E731,E251,E402,F841"
let g:ale_python_mypy_options="--ignore-missing-imports"
let g:ale_python_pylint_options="--rcfile=$HOME/.pylintrc_for_ultimate_vim"
let g:ale_python_black_options="--line-length 80"

let g:ale_fix_on_save=1

" YouCompleteMe config
nnoremap <leader>af :YcmCompleter GoTo<CR>

" Old search highlights sometimes appear after re-sourcing vim with ,re
" To fix that we end by clearing search highlights:
noh

" octol/vim-cpp-enhanced-highlight
" (not sure if this successfully installed?)
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

" fold settings
set foldmethod=indent
set foldlevel=10

" color scheme
"set background=dark
colorscheme vimbrains
highlight SignColumn guibg=Black ctermbg=Black
highlight FoldColumn guibg=Black ctermbg=Black
set foldcolumn=0
" Nice colorschemes: peaksea (backgroudn=dark), lxvc, mod8, highwayman, vimbrains
" jellyx


" shortcut for randomizing vim colorscheme
map <leader>rc :!~/randomize_vim_colorscheme.sh<CR>:source ~/.vimrc<CR>

" %%% Plugin config

" Pathogen -- loaded non-default instead of autoload/pathogen.vim
" git submodule add https://github.com/tpope/vim-pathogen.git bundle/vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Syntastic (syntax checker)
" git submodule add https://github.com/vim-syntastic/syntastic.git bundle/syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_enable_highlighting = 1

" Airline (status line)
" git submodule add https://github.com/vim-airline/vim-airline bundle/vim-airline
" git submodule add https://github.com/vim-airline/vim-airline-themes bundle/vim-airline-themes
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 " sudo apt-get install fonts-powerline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '' " Removed from section z
let g:airline_symbols.colnr = ':' " Removed from section z
" custom section z
let g:airline_section_z = '%p%% %l:%c'

" Fetch (jump to point in file)
" git submodule add https://github.com/wsdjeg/vim-fetch.git bundle/vim-fetch

" %%$ Tags (mostly for PHP)

" universal ctags install
" git clone https://github.com/universal-ctags/ctags.git
" cd ctags
" ./autogen.sh (needs automake & pkg-config)
" ./configure
" make
" make install

" phpctags install
" curl -Ss https://raw.githubusercontent.com/vim-php/phpctags/gh-pages/install/phpctags.phar > phpctags
" chmod +x phpctags
" sudo mv phpctags /usr/local/bin/

" Gutentags (tags magic)
" git submodule add https://github.com/ludovicchabant/vim-gutentags.git bundle/vim-gutentags
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js']
let g:gutentags_cache_dir = '~/.vim/gutentags'

" Tagbar (tag viewer)
" git submodule add https://github.com/preservim/tagbar.git bundle/tagbar
" let g:tagbar_ctags_bin = '/usr/local/bin/phpctags'
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_width = max([80, winwidth(0) / 3])
let g:tagbar_sort = 0 " Source file order
let g:tagbar_compact = 1
let g:tagbar_show_linenumbers = 1 " Absolute
nmap <F8> :TagbarToggle<CR>

" tagbar-phpctags
" git submodule add https://github.com/vim-php/tagbar-phpctags.vim.git bundle/tagbar-phpctags.vim
let g:tagbar_phpctags_bin = '/usr/local/bin/phpctags'

" vim-plugin-for-drupal
" Plugin is nested so we put in extra/ then symlink plugin to bundle/
" mkdir extra
" git submodule add https://git.drupalcode.org/project/vimrc.git extra/vimrc.git
" cd bundle && ln -s ../extra/vimrc.git/bundle/vim-plugin-for-drupal vim-plugin-for-drupal
" :helptags ~/.vim/bundle/vim-plugin-for-drupal/doc

" linediff
" git submodule add https://github.com/AndrewRadev/linediff.vim bundle/linediff
noremap <C-N> :Linediff<CR><C-N>
noremap <C-M> :LinediffReset<CR><C-M>

" vim-gitgutter
" git submodule add https://github.com/airblade/vim-gitgutter.git bundle/vim-gitgutter
" vim -u NONE -c "helptags bundle/vim-gitgutter/doc" -c q
let mapleader = ","
map <Leader>g :GitGutterToggle<CR>
map <Leader>h :GitGutterLineHighlightsToggle<CR>
map <Leader>v <Plug>(GitGutterPreviewHunk)
map <Leader>c :only<CR>
map <Leader><PageDown> <Plug>(GitGutterNextHunk)
map <Leader><PageUp> <Plug>(GitGutterPrevHunk)
map <Leader><Insert> <Plug>(GitGutterStageHunk)
map <Leader><Delete> <Plug>(GitGutterUndoHunk)
" better symbols
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
"let g:gitgutter_sign_removed_first_line = '‾‾'
"let g:gitgutter_sign_removed_above_and_below = '_¯'
"let g:gitgutter_sign_modified_removed = '~_'
" better colours
highlight GitGutterAdd    ctermbg=232 guibg=#080808 ctermfg=2 guifg=#009900
highlight GitGutterChange ctermbg=232 guibg=#080808 ctermfg=3 guifg=#bbbb00
highlight GitGutterDelete ctermbg=232 guibg=#080808 ctermfg=1 guifg=#ff2222
highlight SignColumn      ctermbg=232 guibg=#080808

" %%% Personal config

" file type plugin -- e.g. can add to ftplugin/php
filetype plugin indent on

" show line numbers
set number

" Turn off wrapping
set nowrap

" indent with two spaces by default & auto indent
set expandtab
set tabstop=2
set softtabstop=2 " previously 0, but trialling 2 to allow backspace to delete 2 spaces
set shiftwidth=0 " when zero, the tabstop value is used
set autoindent
set pastetoggle=<F10> " stops wrong indent on paste

" colors
set background=dark
syntax on
highlight Comment ctermfg=green

" show invisible chars
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:·

" setup cursorline and cursorcolumn
:hi CursorLine   cterm=NONE ctermbg=DarkGray guibg=DarkGray
:hi CursorColumn cterm=NONE ctermbg=DarkGray guibg=DarkGray
nnoremap <F4> :set cursorline! cursorcolumn!<CR>

" setup toggles
nnoremap <F2> :set number!<CR>
nnoremap <F3> :set list!<CR>
nnoremap <F5> :let &cc = &cc == '' ? '81' : ''<CR>
nnoremap <F6> :set nowrap!<CR>

function! ToggleMouse(mode)
  " check if mouse is enabled
  if &mouse != ''
    " disable mouse
    set mouse=
    echo ':set mouse='
  else
    " set mouse to the passed parameter mode
    execute 'set mouse=' . a:mode
    echo ':set mouse=' . a:mode
  endif
endfunc

nnoremap <silent> <F7> <ESC>:call ToggleMouse('a')<CR>
nnoremap <silent> <F8> <ESC>:call ToggleMouse('nv')<CR>

" highlight trailing whitespace in red
" have this highlighting not appear whilst you are typing in insert mode
" have the highlighting of whitespace apply when you open new buffers
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" setup better keybinds for vimdiff
if &diff
  " cycle diffs and center change to middle of screen (z.)
  noremap <PageDown> ]cz.
  noremap <PageUp> [cz.
  " diff obtain & diff put
  noremap { do
  noremap } dp
  " Control-L to refresh screen & diffs
  noremap <C-L> :diffupdate<CR><C-L>
endif

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Search highlighting and increment
set hlsearch
set incsearch
:hi clear Search
:hi clear IncSearch
:hi Search term=reverse ctermfg=0 ctermbg=3 guifg=Black guibg=goldenrod1
:hi IncSearch term=reverse ctermfg=0 ctermbg=11 guifg=Black guibg=goldenrod4
noremap <C-K> :let @/=""<CR>

" Macros
" When saving macros re-enter ^[ by typing Ctrl-V ESC in insert mode
let @a = 'mzf(%r]`zcf([' " Replace PHP array() with []

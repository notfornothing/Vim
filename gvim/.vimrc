" Create By JackSparrow"
" Get good ,get vim"

""""""""""""""""""""""""""""""" vim-plug ����������ļ�"""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" ע��
Plug 'preservim/nerdcommenter'

" dracula ����
Plug 'dracula/vim', { 'as': 'dracula' }

" airline �±�״̬�����ϱ�״̬����Ҫ����һ�� =1 ������
" let g:airline#extensions#tabline#enabled = 1
Plug 'vim-airline/vim-airline'

" airline_theme ״̬����ɫ����
" let g:airline_theme='deus'
Plug 'vim-airline/vim-airline-themes'

" �ļ���������
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" ����������ʾ
Plug 'machakann/vim-highlightedyank'

" �����ַ��༭
Plug 'tpope/vim-surround'

" �����ı�����
Plug 'https://github.com/vim-scripts/argtextobj.vim.git'

" ���ֺ����ּӿո�
Plug 'https://github.com/hotoo/pangu.vim.git'

" �������
Plug 'https://github.com/tommcdo/vim-exchange.git'

" ������ת
Plug 'easymotion/vim-easymotion'

" ��ǰ�и���
" rPlug 'https://github.com/itchyny/vim-cursorword.git'


" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


" markdown ����
Plug 'vimwiki/vimwiki'

" markdown Ŀ¼
Plug 'mzlogin/vim-markdown-toc'

" ����
Plug 'terryma/vim-multiple-cursors'

"����д��ģʽ����ͨģʽ���������뷨�л����⣬�����쵼 tx �Ŀ���ֱ�Ӱ������ڵ�ָ��ӵ������ļ����˳�д��ģʽ�Ͳ��ô�������Ӣ����
"http://fcitx.github.io/handbook/chapter-remote.html

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"auto save
call plug#end()
""""""""""""""""""""""""""""""""""""""vim-plug ����"""""""""""""""""""""""""""""""""""""""""

" ���� leader Ϊ�ո�"
let mapleader=" "

" ��������к�"
set rnu
" �����к�
set nu
"���ø���"
set hlsearch
" �Զ���λ�������е��ַ���������Ҫ�س�����
set incsearch
" ȡ��������ĸ���"
nnoremap <silent> <Esc> :nohlsearch<CR>
" �Զ����Դ�Сд
set ignorecase smartcase

" û�еݹ���� insert ģʽ�·����"
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" û�еݹ���� normal ģʽ�·����"
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" redo"
nnoremap U <C-r>

" Ԥ�� 10 �� scroll offset"
" set scrolloff=10

" ���ұ�ǩ��
nnoremap <leader>l :bn!<CR>
nnoremap <leader>h :bp!<CR>


" �����ƶ��ұ��־���"
" ����ƶ�ʵ��������Ļ��
"
" ������ת
vnoremap J 3jzz
vnoremap K 3kzz
nnoremap J 3jzz
nnoremap K 3kzz
" ���У��ҹ���������� j ӳ�������ˣ���Ϊ���� g3j ֻ��һ�е�Ч��
" ��һ��İ취 gjzzgjzzgjzz ������ȱ����ǻỬһ�� ��
" vnoremap J gjgjgjzz
" vnoremap K gkgkgkzz
" nnoremap J gjgjgjzz
" nnoremap K gkgkgkzz

nnoremap G Gzz

nnoremap k gkzz
nnoremap j gjzz
vnoremap k gkzz
vnoremap j gjzz
nnoremap gk kzz
nnoremap gj jzz
vnoremap gk gkzz
vnoremap gj gjzz

" �����Ļ������
vnoremap L g$h
vnoremap H g^
nnoremap L g$
nnoremap H g^


" ԭʼ���� gj ������Ļ�����£�j �������ʵ�������£�����Ϊ�˲������㻻һ�¡������Ĳ�������Ϊ���������ң�����ֻ����һ�½��ͣ���Ϊ�󲿷ֻ�����Ļ���õĶ࣬����������ת��Ҫע�����
" �����������������
" ������ı��༭����ͬ��Vim ������ʵ��������Ļ�С��� Vim �� wrap ���ñ�����ʱ��ȱʡ���ã���ÿ���������ڿ�ȵ��ı��ж��ᱻ������ʾ���Զ����У�������֤�����ı������ڵ�ǰ����������չʾ������"��ˣ��ļ��е�һ�п��ܻᱻ��ʾΪ��Ļ�ϵ������У��Ӷ������� Vim ʵ��������Ļ�еĲ��졣

" ����
nnoremap <C-f> /
inoremap <C-f> <ESC>/

"��� IDEA ϵͳ�����岻���õ�����"
set clipboard+=unnamed

" ��ͨģʽʵ���ƶ���
" δʵ��
nnoremap <C-Up> ddkP
nnoremap <C-Down> ddp

" ��ѡ���ճ��
" δʵ��
nnoremap <C-S-v> <C-v>
nnoremap <C-v> p

" Vim �����������չʾ
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" �����Զ���ȫ
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

" gv ���������������ѡȡ��һ���ɿ���ģʽ��ѡ����ı���Χ
vnoremap < <gv
vnoremap > >gv

" Window operation
" �����ڴ��ڲ�����
" nnoremap <Leader>ww <C-w>w
" nnoremap <Leader>wc <C-W>c
" nnoremap <Leader>wo :only<Cr>
" nnoremap <Leader>wj <C-W>j
" nnoremap <Leader>wk <C-W>k
" nnoremap <Leader>wh <C-W>h
" nnoremap <Leader>wl <C-W>l
" nnoremap <Leader>ws <C-W>s
" nnoremap <Leader>w- <C-W>s
" nnoremap <Leader>wv <C-W>v
" nnoremap <Leader>w\| <C-W>v



" ���� dracula
colorscheme dracula
" ����
set guifont=Consolas:h14

set nobackup
set noswapfile
set clipboard=unnamed

set ts=4
set expandtab
set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ���� GVIM �˵�������
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim
" ���ó�ʼ����λ��
winpos 956 0
" ���ڴ�С
set lines=65 columns=95
" ����ʾ���� / �˵���
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" ʹ������ tab ��ʽ������ gui
set guioptions-=e
set nolist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" gvim
"" gvim �������ÿ�������༭��ʱ�Զ������ϴιر�ʱ�򿪵��ļ���
autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
    \ call mkdir($HOME . "/.vim") |
    \ endif |
    \ execute "mksession! " . $HOME . "/.vim/Session.vim"

autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
    \ execute "source " . $HOME . "/.vim/Session.vim"

" �ر� visual bell
set visualbell t_vb=
" �ر� beep
au GuiEnter * set t_vb=

" ����
nmap <Leader>s :w<CR>
" ����
" nmap <C-s> :w!<CR>
" ���沢���˳���ǩ��
nnoremap <S-z>Z :w!<CR>:bd!<CR>
" ���沢���˳�����
nnoremap <Leader>q :wq!<Cr>

" FZF ����
nmap <C-e> :FZF~<CR>
nmap <C-S-e> :FZF~<CR>
nmap <C-S-E> :FZF~<CR>

" airline
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1

" PanGu �Զ��ո���
autocmd BufWritePre *.vimrc,*.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

"highlightedyank
let g:highlightedyank_highlight_duration = 400


" ��� Vim/Gvim ����ģʽ�� backspace �����޷�ɾ���ַ�������
" ȥ���й� Vi ��һ����ģʽ������֮ǰ�汾�� Bug��������ģʽ�£�
set nocompatible
" ���� backspace �Ĺ�����ʽ��
set backspace=indent,eol,start

" <leader>rc ���� vimrc
nnoremap <leader>rc :e $HOME/.vimrc<CR>
" <leader>rs ���¼��� vimrc
nnoremap <leader>rs :source ~/.vimrc<CR>


let g:dashboard_default_executive ='fzf'

" With this option set, v will match both v and V, but V will match V only. Default: 0.
let g:EasyMotion_smartcase = 1

" ���ù�굱ǰ�и���
set cursorline

filetype on

" markdown-preview
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0


" coc setting
" �� TAB ѡ���һ����ѡԤ����Ĭ������ǲ�ѡ��
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" ������ʾ��ʱ�򰴻س����ǻس��������ǲ�ȫ
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=1


" coc Doc




function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" " coc_snippet====================================================
" " Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)
"
" " Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)
"
" " Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'
"
" " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'
"
" " Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)
"
" " Use <leader>x for convert visual selected code to snippet
" xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
" " coc_snippet====================================================


" coc-explorer
nnoremap <A-1> :CocCommand explorer<CR>


" coc_translatos popup
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)


inoremap ,, <ESC>/<++><CR>:nohlsearch<CR>zzc4l
nnoremap ,, /<++><CR>:nohlsearch<CR>zzc4l


inoremap ,/ <ESC>Go<ESC>o" ===<CR>" ===<CR>" ===<CR><++><ESC>kkla<Space>
nnoremap ,/ Go<ESC>o" ===<CR>" ===<CR>" ===<CR><++><ESC>kkla<Space>
inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
inoremap <buffer> ,n ---<Enter><Enter>
inoremap <buffer> ,b **** <++><Esc>F*hi
inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
inoremap <buffer> ,i ** <++><Esc>F*i
inoremap <buffer> ,d `` <++><Esc>F`i
inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
inoremap <buffer> ,m - [ ]
inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
inoremap <buffer> ,a [](<++>) <++><Esc>F[a
inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
inoremap <buffer> ,l --------<Enter>

nnoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
nnoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
nnoremap <buffer> ,n ---<Enter><Enter>
nnoremap <buffer> ,b **** <++><Esc>F*hi
nnoremap <buffer> ,s ~~~~ <++><Esc>F~hi
nnoremap <buffer> ,i ** <++><Esc>F*i
nnoremap <buffer> ,d `` <++><Esc>F`i
nnoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
nnoremap <buffer> ,m - [ ]
nnoremap <buffer> ,p ![](<++>) <++><Esc>F[a
nnoremap <buffer> ,a [](<++>) <++><Esc>F[a
nnoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
nnoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
nnoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
nnoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
nnoremap <buffer> ,l --------<Enter>


let g:coc_global_extensions =['coc-json','coc-translator','coc-snippets','coc-explorer','coc-java']



" Use K to show documentation in preview window.
nnoremap <silent> <Leader>p :call <SID>show_documentation()<CR>

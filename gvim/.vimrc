" Create By JackSparrow"
" Get good ,get vim"

""""""""""""""""""""""""""""""" vim-plug 插件的配置文件"""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" 注释
Plug 'preservim/nerdcommenter'

" dracula 主题
Plug 'dracula/vim', { 'as': 'dracula' }

" airline 下边状态栏，上边状态栏需要设置一下 =1 的命令
" let g:airline#extensions#tabline#enabled = 1
Plug 'vim-airline/vim-airline'

" airline_theme 状态栏颜色我用
" let g:airline_theme='deus'
Plug 'vim-airline/vim-airline-themes'

" 文件快速搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" 高亮复制显示
Plug 'machakann/vim-highlightedyank'

" 环绕字符编辑
Plug 'tpope/vim-surround'

" 参数文本对象
Plug 'https://github.com/vim-scripts/argtextobj.vim.git'

" 文字和数字加空格
Plug 'https://github.com/hotoo/pangu.vim.git'

" 交换插件
Plug 'https://github.com/tommcdo/vim-exchange.git'

" 快速跳转
Plug 'easymotion/vim-easymotion'

" 当前行高亮
" rPlug 'https://github.com/itchyny/vim-cursorword.git'


" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


" markdown 链接
Plug 'vimwiki/vimwiki'

" markdown 目录
Plug 'mzlogin/vim-markdown-toc'

" 多光标
Plug 'terryma/vim-multiple-cursors'

"关于写入模式和普通模式的中文输入法切换问题，用领领导 tx 的可以直接把链接内的指令加到配置文件，退出写入模式就不用从中文切英文了
"http://fcitx.github.io/handbook/chapter-remote.html

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"auto save
call plug#end()
""""""""""""""""""""""""""""""""""""""vim-plug 结束"""""""""""""""""""""""""""""""""""""""""

" 设置 leader 为空格"
let mapleader=" "

" 设置相对行号"
set rnu
" 设置行号
set nu
"设置高亮"
set hlsearch
" 自动定位到输入中的字符串，不需要回车搜索
set incsearch
" 取消搜索后的高亮"
nnoremap <silent> <Esc> :nohlsearch<CR>
" 自动忽略大小写
set ignorecase smartcase

" 没有递归禁用 insert 模式下方向键"
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" 没有递归禁用 normal 模式下方向键"
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" redo"
nnoremap U <C-r>

" 预留 10 行 scroll offset"
" set scrolloff=10

" 左右标签栏
nnoremap <leader>l :bn!<CR>
nnoremap <leader>h :bp!<CR>


" 上下移动且保持居中"
" 光标移动实际行与屏幕行
"
" 快速跳转
vnoremap J 3jzz
vnoremap K 3kzz
nnoremap J 3jzz
nnoremap K 3kzz
" 不行，我估计是下面的 j 映射上来了，因为我用 g3j 只有一行的效果
" 蠢一点的办法 gjzzgjzzgjzz 这样的缺点就是会滑一下 ：
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

" 快捷屏幕行左右
vnoremap L g$h
vnoremap H g^
nnoremap L g$
nnoremap H g^


" 原始命令 gj 就是屏幕行向下，j 命令就是实际行向下，所以为了操作方便换一下。其他的不换是因为看着容易乱，这里只是做一下解释，因为大部分还是屏幕行用的多，不过行数跳转需要注意就是
" 下面可以用来做测试
" 与许多文本编辑器不同，Vim 会区分实际行与屏幕行。当 Vim 的 wrap 设置被启用时（缺省启用），每个超出窗口宽度的文本行都会被回绕显示（自动换行），来保证所有文本都能在当前窗口中完整展示出来。"因此，文件中的一行可能会被显示为屏幕上的若干行，从而出现了 Vim 实际行与屏幕行的差异。

" 查找
nnoremap <C-f> /
inoremap <C-f> <ESC>/

"解决 IDEA 系统剪贴板不能用的问题"
set clipboard+=unnamed

" 普通模式实现移动行
" 未实现
nnoremap <C-Up> ddkP
nnoremap <C-Down> ddp

" 块选择和粘贴
" 未实现
nnoremap <C-S-v> <C-v>
nnoremap <C-v> p

" Vim 搜索结果居中展示
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" 括号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

" gv 命令可以用于重新选取上一次由可视模式所选择的文本范围
vnoremap < <gv
vnoremap > >gv

" Window operation
" （关于窗口操作）
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



" 主题 dracula
colorscheme dracula
" 字体
set guifont=Consolas:h14

set nobackup
set noswapfile
set clipboard=unnamed

set ts=4
set expandtab
set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 隐藏 GVIM 菜单及设置
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim
" 设置初始界面位置
winpos 956 0
" 窗口大小
set lines=65 columns=95
" 不显示工具 / 菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" 使用内置 tab 样式而不是 gui
set guioptions-=e
set nolist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" gvim
"" gvim 如何设置每次启动编辑器时自动载入上次关闭时打开的文件？
autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
    \ call mkdir($HOME . "/.vim") |
    \ endif |
    \ execute "mksession! " . $HOME . "/.vim/Session.vim"

autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
    \ execute "source " . $HOME . "/.vim/Session.vim"

" 关闭 visual bell
set visualbell t_vb=
" 关闭 beep
au GuiEnter * set t_vb=

" 保存
nmap <Leader>s :w<CR>
" 保存
" nmap <C-s> :w!<CR>
" 保存并且退出标签栏
nnoremap <S-z>Z :w!<CR>:bd!<CR>
" 保存并且退出窗口
nnoremap <Leader>q :wq!<Cr>

" FZF 设置
nmap <C-e> :FZF~<CR>
nmap <C-S-e> :FZF~<CR>
nmap <C-S-E> :FZF~<CR>

" airline
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1

" PanGu 自动空格插件
autocmd BufWritePre *.vimrc,*.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

"highlightedyank
let g:highlightedyank_highlight_duration = 400


" 解决 Vim/Gvim 插入模式下 backspace 按键无法删除字符的问题
" 去掉有关 Vi 的一致性模式，避免之前版本的 Bug，在命令模式下：
set nocompatible
" 设置 backspace 的工作方式：
set backspace=indent,eol,start

" <leader>rc 加载 vimrc
nnoremap <leader>rc :e $HOME/.vimrc<CR>
" <leader>rs 重新加载 vimrc
nnoremap <leader>rs :source ~/.vimrc<CR>


let g:dashboard_default_executive ='fzf'

" With this option set, v will match both v and V, but V will match V only. Default: 0.
let g:EasyMotion_smartcase = 1

" 设置光标当前行高亮
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
" 用 TAB 选择第一个候选预览，默认情况是不选的
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 在有提示的时候按回车就是回车，而不是补全
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

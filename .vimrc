" Create By JackSparrow"
" Get good ,get vim"

"  使vimrc文件里面生效========================没用过
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
" source $VIMRUNTIME/vimrc_example.vim

""""""""""""""""""""""""""""""" vim-plug 插件的配置文件""""""""""""""""""""""" 
call plug#begin('~/.vim/plugged')

" 目录树
Plug 'preservim/nerdtree'

" 注释
Plug 'preservim/nerdcommenter'

" dracula 主题
Plug 'dracula/vim', { 'as': 'dracula' } 

" airline 下边状态栏，上边状态栏需要设置一下=1的命令 
" let g:airline#extensions#tabline#enabled = 1
Plug 'vim-airline/vim-airline'

" airline_theme 状态栏颜色我用
" let g:airline_theme='deus'
Plug 'vim-airline/vim-airline-themes'

" 文件快速搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" 高亮复制显示
Plug 'machakann/vim-highlightedyank'

" 环绕字符编辑
Plug 'tpope/vim-surround'

" 参数文本对象
Plug 'https://github.com/vim-scripts/argtextobj.vim.git'
 
call plug#end() 
""""""""""""""""""""""""""""""""""""""vim-plug结束"""""""""""""""""""""""""""""""""""""""""


" gvim如何设置每次启动编辑器时自动载入上次关闭时打开的文件？
autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
    \ call mkdir($HOME . "/.vim") |
    \ endif |
    \ execute "mksession! " . $HOME . "/.vim/Session.vim"

autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
    \ execute "source " . $HOME . "/.vim/Session.vim"


" 设置leader为空格"
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
nnoremap <Esc> :nohlsearch<CR>
" 自动忽略大小写
set ignorecase smartcase

" 没有递归禁用insert模式下方向键"
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" 没有递归禁用normal模式下方向键"
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" redo"
nnoremap U <C-r>

" 预留10行 scroll offset"
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
" 不行，我估计是下面的j映射上来了，因为我用g3j只有一行的效果
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


" 原始命令gj就是屏幕行向下，j命令就是实际行向下，所以为了操作方便换一下。其他的不换是因为看着容易乱，这里只是做一下解释，因为大部分还是屏幕行用的多，不过行数跳转需要注意就是
" 下面可以用来做测试 
" 与许多文本编辑器不同，Vim 会区分实际行与屏幕行。当 Vim 的 wrap 设置被启用时(缺省启用)，每个超出窗口宽度的文本行都会被回绕显示(自动换行)，来保证所有文本都能在当前窗口中完整展示出来。"因此，文件中的一行可能会被显示为屏幕上的若干行，从而出现了Vim 实际行与屏幕行的差异。

" 查找
nnoremap <C-f> /
inoremap <C-f> <ESC>/

"解决IDEA系统剪贴板不能用的问题"
set clipboard+=unnamed
 
" 普通模式实现移动行
" 未实现
nnoremap <C-Up> ddkP
nnoremap <C-Down> ddp


" 块选择和粘贴
" 未实现
nnoremap <C-S-v> <C-v> 
nnoremap <C-v> p

" Vim搜索结果居中展示
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
" (关于窗口操作)
nnoremap <Leader>ww <C-w>w
nnoremap <Leader>wc <C-W>c
nnoremap <Leader>wo :only<Cr>
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>ws <C-W>s
nnoremap <Leader>w- <C-W>s
nnoremap <Leader>wv <C-W>v
nnoremap <Leader>w\| <C-W>v




" 主题dracula
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
" 隐藏GVIM菜单及设置
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 设置初始界面位置
winpos 956 0 
" 窗口大小
set lines=65 columns=95
" 不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" 使用内置 tab 样式而不是 gui
set guioptions-=e
set nolist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree显示快捷键
nnoremap <A-1> :NERDTreeToggle<CR>

" 关闭visual bell
set visualbell t_vb=  
" 关闭beep
au GuiEnter * set t_vb= 

" 保存
nmap <Leader>s :w<CR>
" 保存
nmap <C-s> :w!<CR>
" 保存并且退出标签栏
nnoremap <S-z>Z :w!<CR>:bd!<CR>
" 保存并且退出窗口
nnoremap <Leader>q :wq!<Cr>

" FZF设置
nmap <C-e> :FZF~<CR>
nmap <C-S-e> :FZF~<CR>
nmap <C-S-E> :FZF~<CR>

" airline
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1

"highlightedyank 
let g:highlightedyank_highlight_duration = 400

" 解码
" set fileencodings=utf-8,gbk,gb2312

" 解决Vim/Gvim插入模式下backspace按键无法删除字符的问题
" 去掉有关Vi的一致性模式，避免之前版本的Bug，在命令模式下：
set nocompatible
" 设置backspace的工作方式：
set backspace=indent,eol,start

nnoremap <leader>rc :e $HOME/.vimrc<CR>
let g:dashboard_default_executive ='fzf'

" Create By JackSparrow"
" Get good ,get vim"

"  ʹvimrc�ļ�������Ч========================û�ù�
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
" source $VIMRUNTIME/vimrc_example.vim

""""""""""""""""""""""""""""""" vim-plug ����������ļ�""""""""""""""""""""""" 
call plug#begin('~/.vim/plugged')

" Ŀ¼��
Plug 'preservim/nerdtree'

" ע��
Plug 'preservim/nerdcommenter'

" dracula ����
Plug 'dracula/vim', { 'as': 'dracula' } 

" airline �±�״̬�����ϱ�״̬����Ҫ����һ��=1������ 
" let g:airline#extensions#tabline#enabled = 1
Plug 'vim-airline/vim-airline'

" airline_theme ״̬����ɫ����
" let g:airline_theme='deus'
Plug 'vim-airline/vim-airline-themes'

" �ļ���������
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" ����������ʾ
Plug 'machakann/vim-highlightedyank'

" �����ַ��༭
Plug 'tpope/vim-surround'

" �����ı�����
Plug 'https://github.com/vim-scripts/argtextobj.vim.git'
 
call plug#end() 
""""""""""""""""""""""""""""""""""""""vim-plug����"""""""""""""""""""""""""""""""""""""""""


" gvim�������ÿ�������༭��ʱ�Զ������ϴιر�ʱ�򿪵��ļ���
autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
    \ call mkdir($HOME . "/.vim") |
    \ endif |
    \ execute "mksession! " . $HOME . "/.vim/Session.vim"

autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
    \ execute "source " . $HOME . "/.vim/Session.vim"


" ����leaderΪ�ո�"
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
nnoremap <Esc> :nohlsearch<CR>
" �Զ����Դ�Сд
set ignorecase smartcase

" û�еݹ����insertģʽ�·����"
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" û�еݹ����normalģʽ�·����"
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" redo"
nnoremap U <C-r>

" Ԥ��10�� scroll offset"
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
" ���У��ҹ����������jӳ�������ˣ���Ϊ����g3jֻ��һ�е�Ч��
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


" ԭʼ����gj������Ļ�����£�j�������ʵ�������£�����Ϊ�˲������㻻һ�¡������Ĳ�������Ϊ���������ң�����ֻ����һ�½��ͣ���Ϊ�󲿷ֻ�����Ļ���õĶ࣬����������ת��Ҫע�����
" ����������������� 
" ������ı��༭����ͬ��Vim ������ʵ��������Ļ�С��� Vim �� wrap ���ñ�����ʱ(ȱʡ����)��ÿ���������ڿ�ȵ��ı��ж��ᱻ������ʾ(�Զ�����)������֤�����ı������ڵ�ǰ����������չʾ������"��ˣ��ļ��е�һ�п��ܻᱻ��ʾΪ��Ļ�ϵ������У��Ӷ�������Vim ʵ��������Ļ�еĲ��졣

" ����
nnoremap <C-f> /
inoremap <C-f> <ESC>/

"���IDEAϵͳ�����岻���õ�����"
set clipboard+=unnamed
 
" ��ͨģʽʵ���ƶ���
" δʵ��
nnoremap <C-Up> ddkP
nnoremap <C-Down> ddp


" ��ѡ���ճ��
" δʵ��
nnoremap <C-S-v> <C-v> 
nnoremap <C-v> p

" Vim�����������չʾ
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
" (���ڴ��ڲ���)
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




" ����dracula
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
" ����GVIM�˵�������
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" ���ó�ʼ����λ��
winpos 956 0 
" ���ڴ�С
set lines=65 columns=95
" ����ʾ����/�˵���
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" ʹ������ tab ��ʽ������ gui
set guioptions-=e
set nolist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree��ʾ��ݼ�
nnoremap <A-1> :NERDTreeToggle<CR>

" �ر�visual bell
set visualbell t_vb=  
" �ر�beep
au GuiEnter * set t_vb= 

" ����
nmap <Leader>s :w<CR>
" ����
nmap <C-s> :w!<CR>
" ���沢���˳���ǩ��
nnoremap <S-z>Z :w!<CR>:bd!<CR>
" ���沢���˳�����
nnoremap <Leader>q :wq!<Cr>

" FZF����
nmap <C-e> :FZF~<CR>
nmap <C-S-e> :FZF~<CR>
nmap <C-S-E> :FZF~<CR>

" airline
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1

"highlightedyank 
let g:highlightedyank_highlight_duration = 400

" ����
" set fileencodings=utf-8,gbk,gb2312

" ���Vim/Gvim����ģʽ��backspace�����޷�ɾ���ַ�������
" ȥ���й�Vi��һ����ģʽ������֮ǰ�汾��Bug��������ģʽ�£�
set nocompatible
" ����backspace�Ĺ�����ʽ��
set backspace=indent,eol,start

nnoremap <leader>rc :e $HOME/.vimrc<CR>
let g:dashboard_default_executive ='fzf'

syntax on                   " 语法支持 syntax highlighing
filetype on					" try to detect filetypes
filetype plugin indent on	" enable loading indent file for filetype

"common conf {{             通用配置
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set encoding=utf-8 
set fileencodings=ucs-bom,utf-8,big5,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠
"set foldmethod=indent
set foldlevel=99

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Monaco:h18
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif 			"字体设置
set anti					" or noanti use smooth, antialiased fonts
colorscheme	molokai			" set color

" move around the windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"}}

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"conf for plugins {{ 插件相关的配置
"状态栏的配置 
"powerline{
set guifont=Monaco:h18
set nocompatible
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}

"pathogen是Vim用来管理插件的插件
"pathogen{
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()
"}

"NERDTree的快捷键
"nerdtree{
"map <leader>n :NERDTreeToggle<CR>
nmap <F3> :NERDTreeToggle<CR>
"let g:NERDTree_title='[NERDTree]'
"let g:winManagerWindowLayout='NERDTree|TagList'
"function! NERDTree_Start()
"exec 'NERDTree'
"endfunction
"function! NERDTree_IsValid()
"    return 1
"endfunction
" 用 F4 打开
"nmap <F4> :WMToggle<cr>:q!<cr>
" 用 ctrl + F4 关闭
"nmap <F5> :WMToggle<cr>
"}

"ConnandT的一些选项
"{
let g:CommandTMaxFkiles=20000
set wildignore+=usr/,Library/
"}

"Taglist相关
"{
" 用 F4 打开TList
set tags=./tags;/

let Tlist_Ctags_Cmd='/usr/local/bin/ctags' 		"因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=0 		"让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 			"让taglist可以同时展示多个文件的函数列表
let Tlist_File_Fold_Auto_Close=1 	"非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 		"当taglist是最后一个分割窗口时，自动推出vim是否一直处理tags.1:处理;0:不处理
let Tlist_Process_File_Always=1 	"实时更新tags
let Tlist_Inc_Winwidth=0
nmap <F4> :Tlist<CR>
"}

"MiniBufferExplorer
"{
let g:miniBufExplMapWindowNavVim = 1 			" 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapWindowNavArrows = 1 		" 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapCTabSwitchBufs = 1 			" 启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
"let g:miniBufExplMapCTabSwitchWindows = 1 		" 启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
let g:miniBufExplModSelTarget = 1    			" 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer
"}


"YouCompleteMe plugins
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files = 0

"vim-autoformat plugins
let g:formatprg_cs = "astyle"
"用F5 Format code
noremap <F5> :Autoformat<CR><CR>

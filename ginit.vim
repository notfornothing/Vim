
" To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
" see https://github.com/equalsraf/neovim-qt/issues/219
if exists('g:GuiLoaded')
  "最大化窗口
  " call GuiWindowMaximized(1)
  " tagbar 可见
  GuiTabline 0
  " 他默认的提示为白色，0取消
  GuiPopupmenu 0
  " 行间距2
  GuiLinespace 2
  " 加！是忽略非等宽提示
  GuiFont! Consolas:h14
endif

 source $HOME/.config/nvim/vim-plug/plugins.vim
 source $HOME/.config/nvim/general/settings.vim
 source $HOME/.config/nvim/plug-config/start-screen.vim
 source $HOME/.config/nvim/keys/mappings.vim

 source $HOME/.config/nvim/plug-config/lsp-config.lua
 luafile $HOME/.config/nvim/plug-config/lspServ/python-lsp.lua
 luafile $HOME/.config/nvim/plug-config/lspServ/clangd-lsp.lua
  
 " Use completion-nvim in every buffer
 autocmd BufEnter * lua require'completion'.on_attach()


 " Use completion-nvim in every buffer

 let g:python3_host_prog="/usr/bin/python3"
 set background=dark
 colorscheme palenight
 
 if (has("nvim"))
   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
 endif

 if (has("termguicolors"))
   set termguicolors
 endif


 let g:palenight_terminal_italics=1
 " Lightline
 let g:lightline = { 'colorscheme': 'palenight' }
 set laststatus=2
 " Nerd Tree buffering and light line fixes.
 
 au VimEnter,BufWinEnter * NERDTreeFind
 
 let NERDTreeMinimalUI=1
 

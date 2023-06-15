vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function() 
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- config for lsp
  use 'psf/black'
  use {
    'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex', 'js', 'ts'},
    cmd = 'ALEEnable',
  }
  use 'morhetz/gruvbox'
  use 'itchyny/lightline.vim'
  use 'shinchu/lightline-gruvbox.vim'
end)

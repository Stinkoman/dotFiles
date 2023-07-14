return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'
  use 'preservim/nerdtree'
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use 'nvim-tree/nvim-tree.lua'
  use 'mfussenegger/nvim-dap'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} } 
  }
  use {
	  "williamboman/mason.nvim",
	  run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  use 'williamboman/mason-lspconfig.nvim'
end)

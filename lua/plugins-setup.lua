local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerCompile
  augroup end
]])


local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- lua functions that many plugins use 
  use "nvim-lua/plenary.nvim"

  use "bluz71/vim-nightfly-colors"
  use "catppuccin/nvim"
  -- 
  use "tpope/vim-surround"
  use "vim-scripts/ReplaceWithRegister"
  -- commenting with gc
  use "numToStr/Comment.nvim"
  -- file explore 
  use "nvim-tree/nvim-tree.lua"
  -- icons
  use "kyazdani42/nvim-web-devicons"
  -- status line
  use  "nvim-lualine/lualine.nvim"
  -- telescope
  -- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  
  use "nvim-telescope/telescope-fzy-native.nvim"
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- autocompletion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"

  -- snippets 
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  
  -- mapping & install lsp servers
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  
  -- configure lsp servers

  use "neovim/nvim-lspconfig"
  
  use "hrsh7th/cmp-nvim-lsp"
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) -- enhanced lsp uis
  -- use { "glepnir/lsp-saga.nvim", branch = "main" }
  use "jose-elias-alvarez/typescript.nvim"
  use "onsails/lspkind.nvim"


  if packer_bootstrap then
    require('packer').sync()
  end
end)



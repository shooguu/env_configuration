---------------------------------------------------------------
-- => Plugins
---------------------------------------------------------------
local api = vim.api
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Fuzzy Finder
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
Plug 'junegunn/fzf.vim'

-- LSP / Tree
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

-- CMP
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

-- For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

-- Ripgrep
Plug 'BurntSushi/ripgrep'

-- Other themes
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

-- Color Scheme
Plug 'EdenEast/nightfox.nvim'
Plug('hardhackerlabs/theme-vim', { ['as'] = 'hardhacker' })

-- Git
Plug 'mhinz/vim-signify'

-- Misc
Plug 'ntpeters/vim-better-whitespace'
Plug 'dstein64/vim-win'
Plug 'danymat/neogen'
Plug 'Jorengarenar/miniSnip'

-- Telescope
Plug('nvim-telescope/telescope.nvim', { ['tag']= '0.1.x' })
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'liuchengxu/vista.vim'

-- Lightspeed
Plug 'ggandor/lightspeed.nvim'

-- diffview
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'

-- git blame
Plug 'f-person/git-blame.nvim'

vim.call('plug#end')

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
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'BurntSushi/ripgrep'

-- Other themes
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

-- Color Scheme
Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'mhartington/oceanic-next'
Plug 'lewpoly/sherbet.nvim'
Plug 'yazeed1s/minimal.nvim'

-- Git
Plug 'mhinz/vim-signify'

-- Misc
Plug 'ntpeters/vim-better-whitespace'
Plug 'dstein64/vim-win'
Plug 'danymat/neogen'
Plug 'Jorengarenar/miniSnip'

-- Telescope
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { ['tag']= '0.1.0' })
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug 'BurntSushi/ripgrep'
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

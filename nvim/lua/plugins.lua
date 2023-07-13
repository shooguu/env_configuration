---------------------------------------------------------------
-- => Plugins
---------------------------------------------------------------
--local api = vim.api local Plug = vim.fn['plug#'] vim.call('plug#begin', '~/.config/nvim/plugged') -- Fuzzy Finder Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']}) Plug 'junegunn/fzf.vim' -- LSP / Tree Plug 'nvim-treesitter/nvim-treesitter' Plug 'neovim/nvim-lspconfig' Plug 'williamboman/nvim-lsp-installer' -- CMP Plug 'hrsh7th/cmp-nvim-lsp' Plug 'hrsh7th/cmp-cmdline' Plug 'hrsh7th/nvim-cmp' Plug 'hrsh7th/cmp-buffer' Plug 'hrsh7th/cmp-path' -- For vsnip users. Plug 'hrsh7th/cmp-vsnip' Plug 'hrsh7th/vim-vsnip' -- Ripgrep Plug 'BurntSushi/ripgrep' -- Other themes Plug 'nvim-lualine/lualine.nvim' Plug 'kyazdani42/nvim-web-devicons' Plug 'romgrk/barbar.nvim' -- Color Scheme Plug 'EdenEast/nightfox.nvim'
--Plug('hardhackerlabs/theme-vim', { ['as'] = 'hardhacker' })
--
---- Git
--Plug 'mhinz/vim-signify'
--
---- Misc
--Plug 'ntpeters/vim-better-whitespace'
--Plug 'dstein64/vim-win'
--Plug 'danymat/neogen'
--Plug 'Jorengarenar/miniSnip'
--
---- Telescope
--Plug('nvim-telescope/telescope.nvim', { ['tag']= '0.1.x' })
--Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'})
--Plug 'nvim-telescope/telescope-file-browser.nvim'
--Plug 'liuchengxu/vista.vim'
--
---- Lightspeed
--Plug 'ggandor/lightspeed.nvim'
--
---- Plenary
--Plug 'nvim-lua/plenary.nvim'
--
---- diffview
--Plug 'sindrets/diffview.nvim'
--
---- git blame
--Plug 'f-person/git-blame.nvim'
--
--vim.call('plug#end')


return require('packer').startup(function(use)

    -- Fuzzy Finder
    use('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
    use 'junegunn/fzf.vim'

    -- LSP / Tree
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    -- CMP
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    -- For vsnip users.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- Ripgrep
    use 'BurntSushi/ripgrep'

    -- Other themes
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'romgrk/barbar.nvim'

    -- Color Scheme
    use 'EdenEast/nightfox.nvim'
    use('hardhackerlabs/theme-vim', { ['as'] = 'hardhacker' })

    -- Git
    use 'mhinz/vim-signify'

    -- Misc
    use 'ntpeters/vim-better-whitespace'
    use 'dstein64/vim-win'
    use 'danymat/neogen'
    use 'Jorengarenar/miniSnip'

    -- Telescope
    use('nvim-telescope/telescope.nvim', { ['tag']= '0.1.x' })
    use('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'})
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'liuchengxu/vista.vim'

    -- Lightspeed
    use 'ggandor/lightspeed.nvim'

    -- Plenary
    use 'nvim-lua/plenary.nvim'

    -- diffview
    use 'sindrets/diffview.nvim'

    -- git blame
    use 'f-person/git-blame.nvim'

end)

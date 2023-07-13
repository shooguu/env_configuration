---------------------------------------------------------------
-- => VIM user interface
---------------------------------------------------------------
-- Color scheme for SCons
vim.cmd [[au BufRead,BufNewFile SContruct set filetype=python]]
vim.cmd [[au BufRead,BufNewFile SConscript set filetype=python]]

-- Start searching before pressing enter
vim.o.incsearch = true

-- Highlight search words
vim.o.hlsearch = true

-- Enable mouse input
vim.cmd [[set mouse=a]]

-- Enable line number
vim.cmd [[set nu rnu]]

-- Set window title
vim.o.title = true

-- incomplete commands
vim.o.showcmd = true

-- a buffer becomes hidden when it is abandoned
vim.o.hid = true

-- configure backspace so it acts as it should act
vim.cmd [[set whichwrap+=<,>,h,l]]

-- ignore case when searching
vim.o.ignorecase = true

-- when searching try to be smart about cases
vim.o.smartcase = true

-- don't redraw while executing macros (good performance config)
vim.o.lazyredraw = true

-- show matching brackets when text indicator is over them
vim.o.showmatch = true

-- how many tenths of a second to blink when matching brackets
vim.o.mat = 2

-- show 6 lines below/above cursor at all times
vim.o.scrolloff = 6

-- set encodign to utf-8
vim.o.encoding = "utf-8"

-- create history buffer allowing you to undo after buffer is closed
vim.o.undofile = true

---------------------------------------------------------------
-- => Text, tab and indent related
---------------------------------------------------------------
-- 1 tab == 4 spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- use spcaes instead of tabs
vim.o.expandtab = true

-- auto indent
vim.o.ai = true

-- smart indent
vim.o.si = true

-- wrap lines
vim.o.wrap = true

-- Enable termguicolors
vim.o.termguicolors = true

---------------------------------------------------------------
-- => Copy and paste
---------------------------------------------------------------
vim.cmd [[set clipboard+=unnamedplus]]

---------------------------------------------------------------
-- => File configuration
---------------------------------------------------------------
vim.cmd [[filetype plugin indent off]]


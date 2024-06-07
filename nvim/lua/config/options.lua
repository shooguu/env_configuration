---------------------------------------------------------------
-- => VIM user interface
---------------------------------------------------------------
-- Disable nvim intro message
vim.opt.shortmess:append("I")

-- Start searching before pressing enter
vim.opt.incsearch = true

-- Highlight search words
vim.opt.hlsearch = true

-- Enable mouse input
vim.opt.mouse:append("a")

-- Enable line number
vim.opt.relativenumber = true
vim.opt.number = true

-- Set window title
vim.opt.title = true

-- incomplete commands
vim.opt.showcmd = true

-- a buffer becomes hidden when it is abandoned
vim.opt.hid = true

-- configure backspace so it acts as it should act
-- vim.cmd("set whichwrap+=<,>,h,l")
vim.opt.backspace = "indent,eol,start"

-- ignore case when searching
vim.opt.ignorecase = true

-- when searching try to be smart about cases
vim.opt.smartcase = true

-- don't redraw while executing macros (good performance config)
vim.opt.lazyredraw = true

-- show matching brackets when text indicator is over them
vim.opt.showmatch = true

-- how many tenths of a second to blink when matching brackets
vim.opt.mat = 2

-- show 6 lines below/above cursor at all times
vim.opt.scrolloff = 6

-- set encodign to utf-8
vim.opt.encoding = "utf-8"

-- create history buffer allowing you to undo after buffer is closed
vim.opt.undofile = true

-- Words with '-' will be treated as a single word
vim.opt.iskeyword:append("-")

---------------------------------------------------------------
-- => Text, tab and indent related
---------------------------------------------------------------
-- 1 tab == 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- use spaces instead of tabs
vim.opt.expandtab = true

-- auto indent
vim.opt.ai = true

-- smart indent
vim.opt.si = true

-- wrap lines
vim.opt.wrap = true

-- Enable termguicolors
vim.opt.termguicolors = true

---------------------------------------------------------------
-- => Copy and paste
---------------------------------------------------------------
vim.opt.clipboard:append("unnamedplus")

---------------------------------------------------------------
-- => File configuration
---------------------------------------------------------------
-- vim.cmd("filetype plugin indent off")

vim.g.netrw_liststyle = 3

local opt = vim.opt

-- Line numbers
opt.number = true                   -- Show absolute line numbers
opt.relativenumber = true           -- Show relative line numbers

-- Tabs and Indentation
opt.tabstop = 4                     -- Number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 4                  -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true                -- Use spaces instead of tabs
opt.autoindent = true               -- Copy indent from current line when starting a new line
opt.smartindent = true              -- Insert indents automatically

-- Line Wrapping
opt.wrap = false                    -- Disable line wrapping

-- Search Settings
opt.ignorecase = true               -- Ignore case in search patterns
opt.smartcase = true                -- Override 'ignorecase' if search pattern contains upper case characters
opt.hlsearch = true                 -- Highlight search matches
opt.incsearch = true                -- Show search matches as you type

-- Cursorline
opt.cursorline = false               -- Highlight the screen line of the cursor

-- Appearance
opt.termguicolors = true            -- Enable 24-bit RGB colors
-- opt.background = 'dark'             -- Dark background
opt.signcolumn = 'yes'              -- Always show the sign column

-- Backups and Undo
opt.backup = false                  -- Disable backup file creation
opt.writebackup = false             -- Disable backup before overwriting a file
opt.undofile = true                 -- Enable persistent undo
opt.swapfile = false                -- Disable swap file creation

-- Clipboard
-- opt.clipboard = 'unnamedplus'       -- Use the system clipboard

-- Splits
opt.splitright = true               -- Vertical splits open to the right
opt.splitbelow = true               -- Horizontal splits open below

-- Wildmenu
opt.wildmenu = true                 -- Enable command-line completion
opt.wildmode = {'longest:full', 'full'}  -- Command-line completion mode

-- Scrolling
opt.scrolloff = 4                   -- Minimum number of screen lines to keep above and below the cursor
opt.sidescrolloff = 4               -- Minimum number of screen lines to keep left and right of the cursor

-- Mouse
opt.mouse = 'a'                     -- Enable mouse support

-- File Encoding
-- opt.encoding = 'utf-8'              -- Set file encoding to UTF-8
-- opt.fileencoding = 'utf-8'          -- Set file encoding to UTF-8

-- Statusline
opt.laststatus = 2                  -- Always display the status line
-- Look at lualine-nvim

vim.g.mapleader = ' '

-- Toggle between relative and absolute line numbers
local function toggle_relative_number()
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
		vim.wo.number = true
	else
		vim.wo.relativenumber = true
		vim.wo.number = true
	end
end
vim.keymap.set("n", "<leader>ln", toggle_relative_number, { noremap = true, silent = true })

-- Leader p v to go to netrw (:Ex)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Control + S (save) in normal mode
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- Telescope Keybinds (find files, find string)
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fs', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Difference between <Esc> and <C-c>
-- <Esc> (Escape):
--   - Traditional way to exit Insert mode to Normal mode.
--   - Processes pending mappings/commands.
--   - Triggers InsertLeave event (used by plugins for linting, formatting, etc.).
--   - Processes any pending typeahead characters.
--
-- <C-c> (Control + C)
--   - Abruptly exits Insert mode.
--   - Does not process pending mappings/commands.
--   - Does not trigger InsertLeave event.
--   - Acts as a "cancel," potentially leaving plugin behaviors untriggered.
--
-- Function to swap <Esc> and <C-c>
local function swap_escape_and_ctrl_c()
    -- Map <C-c> to <Esc>
    vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>', { noremap = true, silent = true })

    -- Map <Esc> to <C-c> behavior
    vim.api.nvim_set_keymap('i', '<Esc>', '<C-c>', { noremap = true, silent = true })

    -- Additional <C-c> behavior to handle <Esc> functionality in Normal mode if needed
    vim.api.nvim_set_keymap('n', '<C-c>', '<Esc>', { noremap = true, silent = true })
end
swap_escape_and_ctrl_c()
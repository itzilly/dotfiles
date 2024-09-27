vim.cmd [[packadd packer.nvim]]

-- Ensure packer is installed
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

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)  
    use 'wbthomason/packer.nvim'
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'} }, cmd = "Telescope"} -- Lazy load telescope
    use 'm4xshen/autoclose.nvim' -- Auto close () {} [] <>
    use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}} -- Async for vim
    use 'radenling/vim-dispatch-neovim' -- NeoVim wrapper for vim-dispatch
    use {'andymass/vim-matchup', event = 'VimEnter'} -- Navigation based on matching
    use {'w0rp/ale', cmd = 'ALEEnable', config = function() vim.cmd[[ALEEnable]] end} -- Async Lint Engine
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', event = 'BufRead'} -- Treesitter
    use {'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }, config = function() require('gitsigns').setup() end} -- Git status

    -- LSP Configuration and Autocompletion
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},            -- Mason (LSP installer)
            {'williamboman/mason-lspconfig.nvim'},  -- Mason Config
            {'neovim/nvim-lspconfig'},              -- LSP Config
            {'hrsh7th/nvim-cmp'},                   -- Completion engine
            {'hrsh7th/cmp-nvim-lsp'},               -- LSP source for nvim-cmp
            {'L3MON4D3/LuaSnip'},                   -- Snippets plugin
        }
    }

    -- Themes
    use 'dracula/vim' -- Dracula theme
    use {'catppuccin/nvim', as = 'catppuccin', config = function() vim.cmd('colorscheme catppuccin') end}
    use {'glepnir/galaxyline.nvim', branch = 'main', config = function() require'galaxyline' end, requires = {'kyazdani42/nvim-web-devicons'}}

    -- Sync packer if it's a fresh install
    if packer_bootstrap then
        require('packer').sync()
    end
end)

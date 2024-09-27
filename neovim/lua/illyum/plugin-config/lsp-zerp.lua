local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- Set up default keymaps provided by lsp-zero
    lsp_zero.default_keymaps({buffer = bufnr})
    local opts = { buffer = bufnr, noremap = true, silent = true }
  
    -- Keybinds
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)             -- Go to definition
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)                   -- Hover documentation
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)             -- List references
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)         -- Rename symbol
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)    -- Code actions
  end)

lsp_zero.setup()

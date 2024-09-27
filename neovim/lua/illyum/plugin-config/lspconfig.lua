local lspconfig = require('lspconfig')

-- gopls
-- Go
lspconfig.gopls.setup({
  on_attach = lsp_zero.on_attach,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
})

-- csharp_ls
-- C#
lspconfig.csharp_ls.setup {
    cmd = { "csharp-ls" },
    on_attach = function(client, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local opts = { noremap=true, silent=true }
    end,
    filetypes = { "cs" },
  }
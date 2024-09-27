require('mason-lspconfig').setup({
    ensure_installed = { "lua_ls", "clangd" },
    handlers = {
      function(server_name)
        require('lspconfig')[server_name].setup({
          on_attach = lsp_zero.on_attach,
          settings = {},
        })
      end,
    }
  })
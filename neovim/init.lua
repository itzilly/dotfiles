-- Load Telescope extensions
require('illyum.options')

-- Custom keybinds
require('illyum.keybinds')


-- Plugin Configs
require('illyum.plugin-config.autoclose')
require('illyum.plugin-config.cmp-nvim')
require('illyum.plugin-config.cmp')
-- the galexyline is required by the plugin in plugins.lua
require('illyum.plugin-config.lsp-zero')
require('illyum.plugin-config.lspconfig')
require('illyum.plugin-config.mason-lspconfig')
require('illyum.plugin-config.mason')
require('illyum.plugin-config.treesitter')


print('init.lua complete! welcome illy <3 :)')

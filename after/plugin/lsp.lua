local lsp = require('lsp-zero')


lsp.preset('recommended')
lsp.setup()

require'lspconfig'.pyright.setup{}
require'lspconfig'.jdtls.setup{} 
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.ltex.setup{}
require'lspconfig'.marksman.setup{}

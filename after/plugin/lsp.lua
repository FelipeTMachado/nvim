local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

require'lspconfig'.pyright.setup{}
require'lspconfig'.jdtls.setup{} 
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.ltex.setup{}
require'lspconfig'.marksman.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.asm_lsp.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.vimls.setup{}

-- CONFIGURANDO MAPPINGS DO CODECOMPLETE
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true}),
    ['<C-l>'] = cmp.mapping.complete(),
})



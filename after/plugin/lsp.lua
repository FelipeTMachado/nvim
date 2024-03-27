local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

local lspc = require'lspconfig'

lspc.pyright.setup{}

lspc.jdtls.setup{}

vim.api.nvim_set_keymap('n', '<leader>dd', [[:lua require('dap').continue()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dc', [[:lua require('dap').disconnect(); require('dap').close()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>oo', [[:lus require('jdtls').organize_imports()<CR>]], { noremap = true, silent = true })

lspc.lua_ls.setup{}
lspc.ltex.setup{}
lspc.marksman.setup{}
lspc.jsonls.setup{}
lspc.asm_lsp.setup{}
lspc.bashls.setup{}
lspc.vimls.setup{}
lspc.sqlls.setup{}

-- CONFIGURANDO MAPPINGS DO CODECOMPLETE
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true}),
    ['<C-l>'] = cmp.mapping.complete(),
})



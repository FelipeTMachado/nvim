local lsp = require('lsp-zero')


lsp.preset('recommended')
lsp.setup()

require'lspconfig'.pyright.setup{}
local config = {
    cmd = {'/home/desenv/.config/nvim/jdtls/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}

require('jdtls').start_or_attach(config)

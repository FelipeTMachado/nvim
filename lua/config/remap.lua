print("Configurando mappings personalizados...")

vim.g.mapleader = " "

local map = vim.keymap.set
local comando = vim.cmd

map("n", "<leader>ee", comando.NvimTreeToggle)
map("n", "<leader>q", comando.quit)
map("n", "<leader>w", comando.write)
map("n", "<leader>ss", comando.split)
map("n", "<leader>sv", comando.vsplit)

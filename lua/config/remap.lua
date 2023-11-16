print("Configurando mappings personalizados...")


local vi = vim.g

vi.mapleader = " "
vi.UltiSnipsExpandTrigger = "<tab>"
vi.UltiSnipsJumpForwardTrigger = "<tab>"
vi.UltiSnipsJumpBackwardTrigger = "<s-tab>"

local map = vim.keymap.set
local comando = vim.cmd

map("n", "<leader>ee", comando.NvimTreeToggle)
map("n", "<leader>q", comando.quit)
map("n", "<leader>w", comando.write)
map("n", "<leader>ss", comando.split)
map("n", "<leader>sv", comando.vsplit)
map("n", "<leader>mm", comando.Mason)


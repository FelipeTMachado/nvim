local v = vim

v.g.terminal_cmd = "/usr/bin/xfce4-terminal-wrapper"

print('Configurando nvim...')

require 'config.config'
require 'config.packer'
require 'config.remap'


lua << EOF
require 'settings'
require 'keys'
require 'plugins'

require 'CoC'
require 'Dashboard'
require 'Specs'
require 'Colorizer'
require 'Treesitter'
require 'Tree'

require 'theme'
EOF

source ~/.config/nvim/lua/CoC.vim

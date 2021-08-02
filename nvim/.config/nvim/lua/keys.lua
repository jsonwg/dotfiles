local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local cmd = vim.cmd 

-- leader key 
vim.g.mapleader = ' '

-- esc shortcuts
map('i', 'kj', '<esc>', opts) 
map('i', 'jk', '<esc>', opts)
map('i', 'kk', '<esc>', opts)
map('i', 'jj', '<esc>', opts)

-- better autocomplete selection
cmd 'inoremap <expr> <c-j> (\"\\<C-n>\")'
cmd 'inoremap <expr> <c-k> (\"\\<C-p>\")'

-- nvim tree
cmd 'nnoremap <silent> <leader>e :lua require"Tree".toggle() <cr>'
cmd 'nnoremap <silent> <leader>n :lua require"Tree".open() <cr>'
cmd 'nnoremap <silent> <leader>r :NvimTreeRefresh <cr>'

-- which key
-- cmd "nnoremap <silent> <leader> :WhichKey '<Space>' <cr>"

-- emacs like
cmd 'nnoremap <leader>sf :w <cr>'
cmd 'nnoremap <leader>so :so % <cr>'
cmd 'nnoremap <leader>qq :q <cr>'
map('n', '<leader>d', '<C-d>', opts)
map('n', '<leader>u', '<C-u>', opts)

-- vim be good
cmd 'nnoremap <silent> <leader>vbg :VimBeGood <cr>'

-- hop
cmd 'nnoremap <leader><leader>w :HopWord <cr>'
cmd 'nnoremap <leader><leader>/ :HopPattern <cr>'
cmd 'nnoremap <leader><leader>f :HopChar1 <cr>'
cmd 'nnoremap <leader><leader>ff :HopChar2 <cr>'
cmd 'nnoremap <leader><leader>j :HopLine <cr>'

-- barbar
cmd 'nnoremap <silent> <leader>l :BufferNext <cr>'
cmd 'nnoremap <silent> <leader>h :BufferPrevious <cr>'
cmd 'nnoremap <silent> <leader>x :BufferClose <cr>'
cmd 'nnoremap <silent> <leader>b :BufferPick <cr>'

-- terminal
map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<cr>', opts)
map('t', '<A-i>', '<c-\\><c-n><CMD>lua require("FTerm").toggle()<cr>', opts)

-- splits
cmd 'nnoremap <leader>sh <c-w>h'
cmd 'nnoremap <leader>sj <c-w>j'
cmd 'nnoremap <leader>sk <c-w>k'
cmd 'nnoremap <leader>sl <c-w>l'
cmd 'nnoremap <leader>ss <c-w>w'
cmd 'nnoremap <leader>vs :vs <cr>'
cmd 'nnoremap <leader>sv :sv <cr>'

-- telescope
cmd "nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>"
cmd "nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>"
cmd "nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>"
cmd "nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>"
cmd "nnoremap <leader>fo <cmd>lua require('telescope.builtin').oldfiles()<cr>"

-- dashboard
cmd "nnoremap <leader>sl <cmd>SessionLoad<cr>"
cmd "nnoremap <leader>gd <cmd>Dashboard<cr>"

-- coc 
cmd [[inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"]]
cmd [[inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"]]
cmd [[nnoremap <silent><nowait> <space>a :<C-u>CocList diagnostics<cr>]]
cmd [[nnoremap <silent><nowait> <space>c :<C-u>CocList commands<cr>]]
cmd [[nmap <leader>rn <Plug>(coc-rename)]]


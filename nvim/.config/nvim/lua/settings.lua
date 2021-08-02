local o = vim.o             -- global
local wo = vim.wo           -- window local
local bo = vim.bo           -- buffer local
local cmd = vim.cmd         -- vim command 

cmd 'syntax on'

    
o.tgc = true                -- terminal gui colors
o.so = 15                   -- scrolloff
o.ignorecase = true         -- ignores case in searches
o.mouse = "a"               -- enables mouse
o.hidden = true             -- hide buffer instead of close
o.ut = 300                  -- updatetime default is 4000ms

wo.rnu = true               -- relative line numbers
wo.nu = true                -- line numbers
wo.cul = false              -- cursorline
wo.wrap = false             -- no wrapping
wo.scl = 'number'           -- signcolumn

bo.et = true                -- expand tab into spaces
bo.tabstop = 4              -- tab stop 
bo.sts = 4                  -- short tab stop
bo.shiftwidth = 4           -- shift width

-- vim.cmd 'autocmd InsertEnter * :set norelativenumber'
-- vim.cmd 'autocmd InsertLeave * :set relativenumber'

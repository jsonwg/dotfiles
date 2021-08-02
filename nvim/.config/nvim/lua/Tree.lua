local g = vim.g

g.nvim_tree_auto_close = 1
g.nvim_tree_highlight_opened_files = 1 

local tree = {}
local state = 0

tree.toggle = function ()
	if state == 0 then
		state = 1 	
		require'bufferline.state'.set_offset(32, '         File Tree')
		require'nvim-tree'.find_file(true)
	else 
		state = 0	
		require'bufferline.state'.set_offset(0)
		require'nvim-tree'.close()
	end
end

tree.open = function ()
	state = 1 	
	require'bufferline.state'.set_offset(32, '         File Tree')
	require'nvim-tree'.find_file(true)
end

return tree

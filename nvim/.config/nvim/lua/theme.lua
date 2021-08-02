local cmd = vim.cmd
local g = vim.g

g.sonokai_style = 'andromeda'
g.sonokai_sign_column_background = 'none'
g.sonokai_diagnostic_text_highlight = 1
g.sonokai_diagnostic_line_highlight = 0
g.sonokai_transparent_background = 0
g.sonokai_diagnostic_virtual_text = 'colored'
g.sonokai_show_eob = 0
g.sonokai_better_performance = 1

g.tokyonight_style = 'storm'
g.tokyonight_hide_inactive_statusline = false
g.tokyonight_dark_sidebar = false

g.material_style = "darker"
g.material_hide_eob = true

g.nvcode_termcolors = 256
-- cmd 'colorscheme sonokai'
-- cmd 'colorscheme moonlight'
cmd 'colorscheme tokyonight'
-- require('material').set()


require'lualine'.setup {
	options = {
		theme = 'tokyonight',
		section_separators = ' ',
		component_separators = ' ',
	}
}

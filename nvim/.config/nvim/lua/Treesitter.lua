require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained", 
    highlight = {
    	enable = true,
    	custom_captures = {
      	["foo.bar"] = "Identifier",
        },
    },
    indent = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = true,
		colors = {
			'#FF6663',
			'#FEB144',
			'#FDFD97',
			'#9EE09E',
			'#9EC1CF',
			'#CC99C9',
		}
    }
}

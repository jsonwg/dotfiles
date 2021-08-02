local cmd = vim.cmd
local o = vim.o

--[[ PLUGINS TO CONSIDER IN THE FUTURE
	symbols-outline		'simrat39/symbols-outline.nvim'
	lsp-rooter			'ahmedkhalf/lsp-rooter.nvim' 
	vim-matchup 		'andymass/vim-matchup'
--]]

cmd 'autocmd BufWritePost plugins.lua PackerCompile'

cmd [[packadd packer.nvim]]
return require'packer'.startup(function ()
    use 'wbthomason/packer.nvim'

    -- LSP
    use {'neoclide/coc.nvim', branch = 'release'}

    -- Theme
    use 'sainnhe/sonokai'
	use 'shaunsingh/moonlight.nvim'
	use 'folke/tokyonight.nvim'
    use 'marko-cerovac/material.nvim'


	-- Extra visuals
    use 'edluffy/specs.nvim'
    use {'liuchengxu/vim-which-key', disable = true}
	use 'hoob3rt/lualine.nvim'
	use 'norcalli/nvim-colorizer.lua'
	use {'yamatsum/nvim-cursorline', disable = true}
	use 'glepnir/dashboard-nvim'


    -- Syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'p00f/nvim-ts-rainbow', requires = {'nvim-treesitter/nvim-treesitter'}}

    -- Game
    use 'ThePrimeagen/vim-be-good'

    -- Movement
    use {
    	'phaazon/hop.nvim',
		config = function() require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } end
    }
	use {
		'nacro90/numb.nvim',
		config = function()
			require('numb').setup()
		end
	}
    
    -- Navigation
	use {
		'numToStr/FTerm.nvim',
		config = function()
			require('FTerm').setup()
		end
	}
    use {'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}}
	use {
		'nvim-telescope/telescope.nvim',
	  	requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

    -- Miscellaneous
    -- use 'jiangmiao/auto-pairs'

end)


return {
	"startup-nvim/startup.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim"
	},
	config = function ()
		require("startup").setup({
			header = {
				type = "text",
				oldfiles_directory = false,
				align = "center",
				fold_section = false,
				title = "Header",
				margin = 5,
				content = require("startup.headers").neovim_logo_header,
				highlight = "@label"
			},
			mappings = {
				type = "mapping",
				oldfiles_directory = false,
				align = "center",
				fold_section = false,
				title = "Mappings",
				margin = 5,
				content = {
					{" File", "Telescope find_files", "f"},
					{" Git file", "Telescope git_files", "g"},
					{"⚙ Config", "cd ~/.config/nvim/", "c"},
					{" Dotfiles", "cd ~/.dotfiles/", "d"},
					{"⏻ Quit nvim", "q", "q"}
				},
				highlight = "Function",
				default_color = "#1F2227"
			},
			options = {
				mapping_keys = true,
				cursor_column = 0.5,
				empty_lines_between_mappings = false,
				disable_statuslines = true,
				paddings = {1,2}
			},
			parts = {"header", "mappings"}
		})
	end
}

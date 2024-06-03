return function ()
	local nvimtree = require("nvim-tree")

	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugins = 1
	vim.opt.termguicolors = true

	nvimtree.setup()

end

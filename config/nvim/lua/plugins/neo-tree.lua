return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim"
  },
	config = function ()
		require("neo-tree").setup({
			default_component_configs = {
				git_status = {
					symbols = {
						untracked = "",
						unstaged = "★"
					}
				}
			},
		})
	end
}

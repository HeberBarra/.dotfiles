return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
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
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {
						"node_modules"
					}
				}
			}
		})
	end
}

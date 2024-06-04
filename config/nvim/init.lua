require("booststrap")
require("configure_indentation")
require("lazy").setup({ import = "plugins" }, {})

vim.cmd.colorscheme("catppuccin")
vim.cmd.set("clipboard+=unnamedplus")
require("keymaps")

vim.cmd.set("number")

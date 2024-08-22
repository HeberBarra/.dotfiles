require("booststrap")
require("configure_indentation")
require("lazy").setup({ import = "plugins" }, {})

vim.cmd.colorscheme("catppuccin")
vim.cmd.set("clipboard+=unnamedplus")
vim.cmd.set("relativenumber")
vim.cmd.set("number")
require("keymaps")

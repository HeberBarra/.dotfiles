require("booststrap")
require("configure_indentation")
require("lazy").setup({ import = "plugins" }, {})

vim.opt.fillchars = "eob: "
vim.o.foldenable = true
vim.o.foldmethod = "marker"
vim.cmd.colorscheme("material-deep-ocean")
vim.cmd.set("clipboard+=unnamedplus")
vim.cmd.set("relativenumber")
vim.cmd.set("number")
require("keymaps")

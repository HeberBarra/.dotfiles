require("booststrap")
require("configure_indentation")
require("lazy").setup({ import = "plugins" }, {})

vim.opt.fillchars = "eob: "
vim.o.foldenable = true
vim.o.foldmethod = "marker"
vim.lsp.inlay_hint.enable(true, { 0 })
vim.cmd.colorscheme("catppuccin-mocha")
vim.cmd.set("clipboard+=unnamedplus")
vim.cmd.set("relativenumber")
vim.cmd.set("number")
require("keymaps")

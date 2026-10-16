return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    vim.opt.mousemoveevent = true
    vim.opt.termguicolors = true

    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        indicator = {
          style = "icon",
        },
        separator_style = "slope",
        truncate_names = false,
      },
    })
  end,
}

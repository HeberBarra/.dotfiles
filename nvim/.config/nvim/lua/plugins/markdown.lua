return {
  "MeanderingProgrammer/markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  cmd = { "RenderMarkdownToggle" },
  ft = "markdown",
  config = function()
    require("render-markdown").setup({})
  end,
}

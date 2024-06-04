return {
  "mistricky/codesnap.nvim",
  build = "make",
  lazy = true,
  cmd = "CodeSnap",
  config = function()
    require("codesnap").setup({
      bg_theme = "grape",
      has_breadcrumbs = true,
      code_font_family = "JetBrainsMono Nerd Font Mono",
    })
  end,
}

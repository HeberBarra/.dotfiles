return {
  "mistricky/codesnap.nvim",
  lazy = true,
  cmd = "CodeSnap",
  config = function()
    require("codesnap").setup({
      snapshot_config = {
        code_config = {
          breadcrumbs = {
            enable = true,
            separator = "/",
            color = "#80848b",
            font_family = "JetBrainsMono Nerd Font Mono",
          }
        },
        theme = "candy",
      }
    })
  end,
}

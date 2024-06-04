return {
  "lewis6991/gitsigns.nvim",
  event = "VimEnter",
  cmd = "Gitsigns",
  config = function()
    require("gitsigns").setup()
  end,
}

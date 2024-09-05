return {
  "lervag/vimtex",
  ft = { "tex" },
  config = function()
    vim.g.vimtex_compiler_latexmk = {
      build_dir = ".out",
      options = {
        "-shell-escape",
        "-verbose",
        "-file-line-error",
        "-interaction=nonstopmode",
        "-synctex=1",
      },
    }
    vim.g.vimtex_view_method = "general"
    vim.g.vimtex_view_automatic = 0
    vim.g.vimtex_syntax_enabled = 0
    vim.api.nvim_create_autocmd({ "FileType" }, {
      pattern = "*.tex",
      callback = "VimtexCompile",
    })
  end,
}

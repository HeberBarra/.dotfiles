# https://github.com/neovim/nvim-lspconfig/blob/master/lsp/texlab.lua

return {
  cmd = { "texlab" },
  filetypes = { "tex", "plaintex" },
  root_markers = { ".git", ".latexindent.yaml" },
  settings = {
    texlab = {
      bibtexFormatter = "none",
      formatterLineLength = 120
    }
  }
}


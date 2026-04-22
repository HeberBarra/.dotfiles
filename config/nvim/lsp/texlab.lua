# https://github.com/neovim/nvim-lspconfig/blob/master/lsp/texlab.lua

return {
  cmd = { "texlab" },
  filetypes = { "tex", "plaintex", "bib" },
  root_markers = { ".git", ".latexindent.yaml" },
  settings = {
    texlab = {
      bibtexFormatter = "latexindent",
      formatterLineLength = 120
    }
  }
}


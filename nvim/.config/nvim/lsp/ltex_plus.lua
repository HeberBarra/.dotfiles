local language_id_mapping = {
  bib = "bibtex",
  plaintex = "tex",
  tex = "latex",
  text = "plaintext",
}

return {
  cmd = { "ltex-ls-plus" },
  filetypes = {
    "bib",
    "gitcommit",
    "html",
    "markdown",
    "plaintex",
    "tex",
    "text",
    "xhtml",
  },
  root_markers = { ".git" },
  get_language_id = function(_, filetype)
    return language_id_mapping[filetype] or filetype
  end,
  settings = {
    ltex = {
      enabled = {
        "bib",
        "gitcommit",
        "html",
        "markdown",
        "plaintex",
        "tex",
        "latex",
        "text",
        "xhtml",
      },
      language = "pt-BR",
    },
  },
}

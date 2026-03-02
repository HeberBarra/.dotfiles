return {
  cmd = { "gh-actions-language-server", "--stdio" },
  filetypes = { "yaml" },
  root_dir = function(bufnr, on_dir)
    local parent = vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr))
    if vim.endswith(parent, ".github/workflows") then
      on_dir(parent)
    end
  end,
  handlers = {
    ["actions/readFile"] = function(_, result)
      if type(result.path) ~= "string" then
        return nil, nil
      end
      local filepath = vim.uri_to_fname(result.path)

      if vim.fn.filereadable(filepath) == 1 then
        local f = assert(io.open(filepath, "r"))
        local text = f:read("*a")
        f:close()

        return text, nil
      end

      return nil, nil
    end,
  },
  init_options = {},
  capabilities = {
    workspace = {
      didChangeWorkspaceFolders = {
        dynamicRegistration = true,
      },
    },
  },
}

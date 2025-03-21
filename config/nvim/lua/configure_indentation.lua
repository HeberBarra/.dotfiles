local two_spaces_indentation =
  { "bib", "html", "json", "jsonc", "tex", "lua", "php", "toml", "sql", "xml", "gitconfig" }
local four_spaces_indentation =
  { "asm", "bash", "c", "cpp", "cs", "conf", "java", "nginx", "python", "javascript", "ps1", "sh", "typescript" }
local tab_indentation = { "make" }

local set_indentation_settings = function(filetypes, space_quantity)
  for _, filetype in ipairs(filetypes) do
    vim.api.nvim_create_autocmd("FileType", {
      pattern = filetype,
      callback = function()
        vim.opt.shiftwidth = space_quantity
        vim.opt.tabstop = space_quantity
        vim.opt.softtabstop = space_quantity
        vim.opt.expandtab = true
      end,
    })
  end
end

set_indentation_settings(two_spaces_indentation, 2)
set_indentation_settings(four_spaces_indentation, 4)

for _, filetype in ipairs(tab_indentation) do
  vim.api.nvim_create_autocmd("FileType", {
    pattern = filetype,
    callback = function()
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
      vim.opt.softtabstop = 4
      vim.opt.expandtab = false
    end,
  })
end

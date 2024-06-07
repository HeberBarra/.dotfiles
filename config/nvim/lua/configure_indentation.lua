local two_spaces_indentation = { "html", "json", "lua", "toml", "xml" }
local four_spaces_indentation = { "c", "cpp", "cs", "java", "python", "javascript", "typescript" }

local set_indentation_settings = function(filetypes, space_quantity)
  for _, filetype in ipairs(filetypes) do
    vim.api.nvim_create_autocmd("FileType", {
      pattern = filetype,
      callback = function()
        vim.opt.shiftwidth = space_quantity
        vim.opt.tabstop = space_quantity
        vim.opt.softtabstop = space_quantity
      end,
    })
  end
end

set_indentation_settings(two_spaces_indentation, 2)
set_indentation_settings(four_spaces_indentation, 4)

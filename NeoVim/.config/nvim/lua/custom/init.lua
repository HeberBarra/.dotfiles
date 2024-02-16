vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

local patterns = {"html", "json", "lua", "xml"}

for _, pattern in ipairs(patterns) do
  vim.api.nvim_create_autocmd("FileType", {
    pattern = pattern,
    callback = function ()
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
    end
  })
end

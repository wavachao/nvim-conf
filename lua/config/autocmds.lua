-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Auto-save on focus change (like VSCode's onFocusChange)
vim.api.nvim_create_autocmd("FocusLost", {
  desc = "Auto-save when losing focus",
  pattern = "*",
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" then
      vim.cmd("silent! update")
    end
  end,
})

vim.api.nvim_create_autocmd("BufLeave", {
  desc = "Auto-save when leaving buffer",
  pattern = "*",
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" then
      vim.cmd("silent! update")
    end
  end,
})

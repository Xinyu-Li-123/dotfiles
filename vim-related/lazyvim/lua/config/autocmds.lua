-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Disable autocomplete by default for some files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "gitcommit" },
  callback = function()
    vim.b.completion = false
  end,
})

-- Disable diagnostic by default for some files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.diagnostic.enable(false)
  end,
})

-- -- Auto-format python on buf write
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*.py",
--   callback = function()
--     require("conform").format({ async = false, lsp_fallback = true })
--   end,
-- })

-- Disable spell check for Chinese
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "en_us", "cjk" }
  end,
})

-- Use C++ syntax highlight on ISPC file
vim.filetype.add({
  extension = { ispc = "ispc" },
})
vim.treesitter.language.register("cpp", "ispc")

vim.filetype.add({
  extension = { cu_inl = "cu_inl" },
})
vim.treesitter.language.register("cpp", "cu_inl")

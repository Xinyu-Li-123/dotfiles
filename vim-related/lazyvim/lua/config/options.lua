-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.winbar = "%=%m %f"
vim.g.snacks_animate = false
-- disable ai auto-completion
vim.g.ai_cmp = false
-- vim.o.background = "light"
-- vim.o.background = "dark"
vim.o.wrap = true
vim.o.conceallevel = 0

-- Treat CJK (Chinese / Japanese / Korean ) char as valid char, so we don't get the annoying squirly unerline
vim.opt.spelllang = { "en", "cjk" }

-- Allow workspace-specific config of NeoVim
vim.opt.exrc = true

vim.opt.swapfile = false

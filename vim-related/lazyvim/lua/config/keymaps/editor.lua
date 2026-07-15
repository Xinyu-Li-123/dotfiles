-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map 'jk' to exit insert mode
vim.keymap.set("i", "jk", "<Esc>:w<CR>", { desc = "Exit insert mode and save changes" })
vim.keymap.set("n", "<leader>fT", function()
	Snacks.terminal(nil, { win = { position = "left" } })
end, { desc = "Terminal left" })

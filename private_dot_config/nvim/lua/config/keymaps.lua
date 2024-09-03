-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Expand %% to dir of current file in command line
vim.keymap.set("c", "%%", "<C-R>=expand('%:h').'/'<cr>", { desc = "Expand to dirname of current file" })

-- Rebind join lines before we remap vertical navigation
vim.keymap.set("n", "<C-j>", "J", { remap = false })

-- Vertical navigation
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "J", "6j")
vim.keymap.set("n", "K", "6k")

-- Center after moving
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Copy current file path
vim.keymap.set("n", "<Leader>yp", ":let @+=@%<cr>", { desc = "Cop[y] current file [p]ath" })

-- Reindent faster
vim.keymap.set("n", "<", "<<", { desc = "Remove one indentation level" })
vim.keymap.set("n", ">", ">>", { desc = "Indent one level" })

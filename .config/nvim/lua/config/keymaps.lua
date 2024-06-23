-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<leader>w|")
vim.keymap.set("n", "<leader>wv", ":split<CR>")
vim.keymap.del("n", "<leader>w-")
vim.keymap.set("n", "<leader>ws", ":vsplit<CR>")
vim.keymap.set("x", "<leader>y", '"*y', { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>p", '"*p')

vim.keymap.set("n", "<S-Up>", ":resize -5N<CR>")
vim.keymap.set("n", "<S-Down>", ":resize +5N<CR>")
vim.keymap.set("n", "<S-Left>", ":vertical resize -5N<CR>")
vim.keymap.set("n", "<S-Right>", ":vertical resize +5N<CR>")

vim.keymap.set("n", "<leader>bn", ":bn<CR>")
vim.keymap.set("n", "<leader>bp", ":bp<CR>")

vim.keymap.set(
  "n",
  "<leader>fw",
  '<cmd>lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>',
  { noremap = true }
)
vim.keymap.set("v", "<leader>[", ":w !python3<CR>")

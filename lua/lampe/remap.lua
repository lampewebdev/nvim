vim.g.mapleader = " "
vim.keymap.set("n", "<leader>px", vim.cmd.Ex, { desc = "Open Ex" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "page up and center"})
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "page down and center"})
vim.keymap.set("n", "n", "nzzv", { desc = "find next and center" })
vim.keymap.set("n", "N", "Nzzv", { desc = "find prev and center" })

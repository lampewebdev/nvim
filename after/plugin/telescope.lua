local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tf', builtin.find_files, { desc = 'Telescope find files'})
vim.keymap.set('n', '<leader>tg', builtin.git_files, { desc = "Telescope git files"})
vim.keymap.set('n', '<leader>tl', builtin.live_grep, { desc = "telescope live grep"})
vim.keymap.set('n', '<leader>tb', builtin.buffers, { desc = "Telescope buffers" })


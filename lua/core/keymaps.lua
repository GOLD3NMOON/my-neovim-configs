local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
vim.keymap.set("n", "<leader>fp", ":Telescope projects<CR>", opts)

vim.keymap.set("n", "<leader>vv", "<cmd>VenvSelect<CR>", opts)
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", opts)

-- move highlighted chunk
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<", "<gv", { desc = "Unindent and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent and reselect" })

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- center cursor
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right pane" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left pane" })

-- terminal map
vim.keymap.set('n', '<leader>t', ':terminal<CR>i', { desc = 'Open terminal' })
vim.keymap.set('t', '<leader>t', '<C-\\><C-n>:bd!<CR>', { desc = 'Close terminal' })

-- remap <C-w> to <C-BS> to match windows
vim.keymap.set('i', '<C-BS>', '<C-W>', { noremap = true })

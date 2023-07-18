vim.g.mapleader = " "
vim.keymap.set("n", "Q", "<nop>", { desc = 'Disable Ex mode toggle.' })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Ex command' } )

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move visual block down.' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move visual block up.' })

vim.keymap.set("n", "J", "mzJ`z", { desc = 'Merge next line without cursor move.' })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = 'Down half page, cursor centered vertically.' })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = 'Up half page, cursor centered vertically.' })
vim.keymap.set("n", "n", "nzzzv", { desc = 'Search forwards, cursor centered vertically.' })
vim.keymap.set("n", "N", "Nzzzv", { desc = 'Search backwards, cursor centered vertically.' })

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = 'Paste with preserve register.' })
vim.keymap.set("n", "<leader>y", "\"+y", { desc = 'Yank to system clipboard.' })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = 'Yank to system clipboard.' })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = 'Yank to system clipboard.' })
vim.keymap.set("n", "<leader>d", "\"_d", { desc = 'Delete to void register.' })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = 'Delete to void register.' })

vim.keymap.set("i", "<C-c>", "<Esc>", { desc = 'Align Ctl C behavior to escape behavior.' })
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end, { desc = 'Language specific format of current buffer.' })

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = 'Switch project.' })
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = 'Quickfix, next error, cursor centered vertically.'})
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = 'Quickfix, previous error, cursor centered vertically.'})
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = 'Location list, next error, cursor centered vertically.'})
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = 'Location list, previous error, cursor centered vertically.'})

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = 'Global search and replace for word the cursor is currently over.' })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = 'Set file attribure of current buffer to executable.' })


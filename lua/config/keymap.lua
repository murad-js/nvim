vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>re", vim.cmd.Rex)

vim.keymap.set('n', '<Esc>', function()
	vim.cmd('nohlsearch')
	return '<Esc>'
end, { expr = true, silent = true })

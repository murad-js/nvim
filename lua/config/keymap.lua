vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>re", vim.cmd.Rex)

vim.keymap.set('n', '<Esc>', function()
	vim.cmd('nohlsearch')
	return '<Esc>'
end, { expr = true, silent = true })

vim.keymap.set("n", "<leader>bo", function()
	local bufs=vim.api.nvim_list_bufs()
	local current_buf=vim.api.nvim_get_current_buf()

	for _,i in ipairs(bufs) do
		if i~=current_buf then
			vim.api.nvim_buf_delete(i,{})
		end
	end
end)

vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

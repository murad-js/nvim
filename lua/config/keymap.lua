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

vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "code action" })
vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, { desc = "implementations" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { desc = "ref" })
vim.keymap.set("n", "<leader>ln", vim.lsp.buf.rename, { desc = "new name" })
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.type_definition, { desc = "type def" })

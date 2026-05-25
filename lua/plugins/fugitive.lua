return {
	'tpope/vim-fugitive',
	dependencies = { 'tpope/vim-rhubarb' },
	config = function()
		vim.keymap.set("n", "gm", "<cmd>diffget //2<CR>")
		vim.keymap.set("n", "gt", "<cmd>diffget //3<CR>")
		vim.keymap.set("n", "<leader>rs", "<cmd>Git restore %<CR><cmd>edit<CR>", { desc = "Git restore current file" })
	end
}

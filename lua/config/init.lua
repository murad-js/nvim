require("config.opt")
require("config.keymap")
require("config.autocmd")
require("config.diagnostic")
require("config.lazy")

vim.lsp.enable("ts_ls")
vim.lsp.enable("clangd")

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', {}),
	callback = function(args)
		vim.keymap.set('n', '<leader>ai', function()
			vim.lsp.buf.code_action({
				context = {
					only = { "source.addMissingImports.ts" },
					diagnostics = {},
				},
			})
		end, { desc = "[a]dd missing [i]mports (TS)" })
	end,
})

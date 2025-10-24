return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 
		'nvim-lua/plenary.nvim',
		'nvim-treesitter/nvim-treesitter',
	},
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set(
			'n', 
			'<leader>ff',
			function()
				builtin.find_files({
					find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
				})
			end,
			{  desc = '[f]ind [f]iles' }
		)
		vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = '[g]it [f]iles' })
		vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'live grep' })
		vim.keymap.set('n', '<leader>fm', function()
			builtin.live_grep({
				additional_args = function()
					return { "--multiline", "--multiline-dotall" }
				end,
			})
		end, { desc = 'live grep multiline' })
		vim.keymap.set('n', '<leader>fu', builtin.grep_string, { desc = 'find word [u]nder [c]ursor' })
		vim.keymap.set('n', '<leader>bl', builtin.buffers, { desc = '[b]uffers [l]ist' })
		vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = '[g]it [s]tatus' })
		vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[f]inder [r]esume' })

		vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = '[g]oto [d]efinition' })
		vim.keymap.set('n', 'gr', function()
			builtin.lsp_references({
				show_line =  false,
			})
		end , { desc = '[g]oto [r]eferences', nowait=true })
		vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = '[g]oto [i]mpl' })
	end,
}

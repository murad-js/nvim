return {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '1.*',
	opts = {
		-- Defaults: 
		-- ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
		-- ['<C-e>'] = { 'hide', 'fallback' },
		-- ['<C-y>'] = { 'select_and_accept', 'fallback' },
		--
		-- ['<Up>'] = { 'select_prev', 'fallback' },
		-- ['<Down>'] = { 'select_next', 'fallback' },
		-- ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
		-- ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
		--
		-- ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
		-- ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
		--
		-- ['<Tab>'] = { 'snippet_forward', 'fallback' },
		-- ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
		--
		-- ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
		keymap = { preset = 'default' },

		appearance = {
			nerd_font_variant = 'mono'
		},

		-- (Default) Only show the documentation popup when manually triggered
		completion = { documentation = { auto_show = false } },

		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		-- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
		-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
		-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
		--
		-- See the fuzzy documentation for more information
		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}

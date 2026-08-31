return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	config = function()
		local patterns = { 'rust', 'javascript', 'zig', 'typescript', 'java', 'bash', 'css', 'html', 'diff', 'dockerfile', 'go', 'groovy', 'json', 'kotlin', 'latex', 'lua', 'markdown', 'markdown_inline', 'nix', 'python', 'regex', 'scala', 'sql', 'toml', 'vim', 'xml', 'yaml' }
		require('nvim-treesitter').install(patterns):wait(300000)
		vim.api.nvim_create_autocmd('FileType', {
			pattern = patterns,
			callback = function() vim.treesitter.start() end,
		})
	--	vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
	--	vim.wo[0][0].foldmethod = 'expr'
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end
}

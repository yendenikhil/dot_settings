return {
	{ "mason-org/mason.nvim", opts = {} },
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if not client then
						return
					end

					if client:supports_method("textDocument/formatting") then
						vim.keymap.set("n", "<leader>fm", function()
							vim.lsp.buf.format({ async = true })
						end, { buffer = args.buf, desc = "Format buffer with LSP" })
					end
				end,
			})
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				update_in_insert = true,
				underline = true,
				severity_sort = true,
				float = {
					focusable = false,
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
				},
			})
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
          "ts_ls",
				},
				automatic_enable = {
					"lua_ls",
          "ts_ls",
				},
			})
		end,
	},
}

-- It's important that you set up the plugins in the following order:
-- 	1. mason.nvim
-- 	2. mason-lspconfig.nvim
-- 	3. Setup servers via lspconfig
return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {

			ensure_installed = {
				"lua_ls",
				"clangd",
			},

			automatic_installation = false,
		},
	},

	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {desc = "Function Hover"})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {desc = "Go Definition"})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {desc = "Go References"})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc = "Go Code Action"})
		end,
	},
}

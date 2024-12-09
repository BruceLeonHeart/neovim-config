return {
	"nvimtools/none-ls.nvim",
	opts = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format.with({
					extra_args = {
						"-style={BasedOnStyle: LLVM, AllowShortFunctionsOnASingleLine: None ,IndentWidth: 4}",
					},
				}),
			},
		})
	end,

	keys = {
		{
			"<leader>gf",
			vim.lsp.buf.format,
			mode =  {"n", "v" },
			desc = "Code Formater",
		},
	},
}

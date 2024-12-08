return {
  "nvimtools/none-ls.nvim",
  opts = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
      },
    })
  end,

  keys = {
    {
      "<leader>gf",
      vim.lsp.buf.format,
      { "n", "v" },
      {},
    },
  },
}

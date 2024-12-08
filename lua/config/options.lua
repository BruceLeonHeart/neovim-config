local opt = vim.opt
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = {"c", "cpp", "md", "txt", "c.snippets", "cpp.snippets","py"},
    callback = function()
        vim.b.autoformat = true
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.softtabstop = 4
    end,
})


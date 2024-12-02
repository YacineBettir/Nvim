return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Optional: Using pylint for more advanced diagnostics
                null_ls.builtins.diagnostics.pylint.with({
                    command = "pylint",
                    args = { "--from-stdin", "$FILENAME" }, -- File name is required here
                }),
                -- Optional: Using mypy for type checking
                null_ls.builtins.diagnostics.mypy,
                --null_ls.builtins.formatting.eslint_d,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black.with({
                    extra_args = { "--line-length", '88' },
                }),

            }
        })
    end,
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

}

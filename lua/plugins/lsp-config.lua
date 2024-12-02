return {
    {
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "ts_ls" },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.ts_ls.setup({ capabilities = capabilities })
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.pyright.setup({
                capabilities = capabilities,
                settings = {
                    python = {
                        analysis = {
                           -- typeCheckingMode = "none",    -- Type checking mode (adjust as needed)
                            autoSearchPaths = true,        -- Automatically search for libraries
                            --useLibraryCodeForTypes = true, -- Use library code for type inference
                        },
                    },
                },
            })
            vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    },
}

return {

    -- Mason: used to install servers
    {
        'mason-org/mason.nvim',
        opts = {},
    },

    -- Mason lspconfig: determines which servers to install
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {
            ensure_installed = {
                "lua_ls",
                "gopls",
            },
        },
    },

    -- Neovim lspconfig: starts and connects to servers
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lsps = {
                { "lua_ls" },
                { "gopls" },
            }

            for _, lsp in pairs(lsps) do
                local name, config = lsp[1], lsp[2]
                vim.lsp.enable(name)
                if config then
                    vim.lsp.config(name, config)
                end
            end
        end
    },
}


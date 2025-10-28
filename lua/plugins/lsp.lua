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
                { "lua_ls"},
                { "gopls" },
            }

            for _, lsp in pairs(lsps) do
                local name, config = lsp[1], lsp[2]
                vim.lsp.enable(name)
                if config then
                    vim.lsp.config(name, config)
                end
            end

            vim.diagnostic.config({
                float = {
                    border = "rounded",
                    focusable = false,
                    style = "minimal",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            })
        end
    },

    -- cmp: autocompletion engine
    {
        'hrsh7th/nvim-cmp',

        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
        },

        config = function()
            local cmp = require('cmp')
            local cmp_select = { behavior = cmp.SelectBehavior.Insert }

            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<C-Space>'] = cmp.mapping.complete(),
                }),
                sources = {
                    { name = 'nvim_lsp' },
                },
            })
        end,
    },
}


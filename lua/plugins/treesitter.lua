return {
    'nvim-treesitter/nvim-treesitter',

    opts = function(_, opts)
        opts.ignore_install = { 'help' }
    end,

    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                "lua", "go", "vimdoc",
            },

            sync_install = false,
            auto_install = true,

            indent = {
                enabled = true 
            },
        })
    end,
}

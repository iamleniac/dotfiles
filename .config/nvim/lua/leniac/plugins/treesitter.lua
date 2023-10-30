return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            -- Add languages to be installed here that you want installed for treesitter
            ensure_installed = { 'c', 'cpp', 'rust', 'go', 'lua', 'python', 'typescript' },

            -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
            auto_install = false,
            autotag = { enable = true },

            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

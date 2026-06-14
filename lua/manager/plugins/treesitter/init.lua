return {
    'neovim-treesitter/nvim-treesitter',
    lazy = false,
    dependencies = { 'neovim-treesitter/treesitter-parser-registry' },
    build = ':TSUpdate',
    config = function()
        require("manager.plugins.treesitter.config")
    end
}

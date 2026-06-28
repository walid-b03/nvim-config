local parsers = {
    "astro", "bash", "blade", "c", "cpp", "css", "go", "html", "javascript", "lua", "markdown", "markdown_inline",
    "php", "php_only", "python", "query", "sql", "typescript", "tsx", "vim", "vimdoc", "svelte",
}

require('nvim-treesitter').install(parsers)

vim.api.nvim_create_autocmd("FileType", {
    pattern = parsers,
    callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})


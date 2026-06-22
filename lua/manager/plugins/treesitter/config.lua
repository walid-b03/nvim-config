local ensure_parsers = {
    "astro", "bash", "blade", "c", "cpp", "css", "go", "html", "javascript", "lua", "markdown", "markdown_inline",
    "php", "php_only", "python", "query", "sql", "typescript", "tsx", "vim", "vimdoc", "svelte",
}

require('nvim-treesitter').install(ensure_parsers)


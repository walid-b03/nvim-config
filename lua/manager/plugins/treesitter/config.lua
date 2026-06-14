local ensure_parsers = {
    "astro", "bash", "blade", "c", "cpp",
    "css", "go", "html", "javascript", "lua",
    "markdown", "markdown_inline", "php", "php_only", "python", "query",
    "sql", "typescript", "tsx", "vim", "vimdoc",
}

local installed = require('nvim-treesitter').get_installed()
local missing = vim.iter(ensure_parsers)
    :filter(function(p) return not vim.tbl_contains(installed, p) end)
    :totable()
if #missing > 0 then
    require('nvim-treesitter').install(missing):wait(120000)
end


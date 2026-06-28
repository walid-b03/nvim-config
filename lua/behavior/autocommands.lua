-- Highlight on yank --
---------------------------------
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", {clear = true}),
    callback = function() vim.highlight.on_yank() end,
})

-- enable line wrap for markdown and text --
--------------------------------------------
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text" },
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.textwidth = 120
    end,
})

-- remove trailing white spaces --
----------------------------------
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*',
    callback = function()
        local save = vim.fn.winsaveview()
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.fn.winrestview(save)
    end,
})

-- name unamed buffers --
--------------------------
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 and vim.api.nvim_buf_get_name(0) == "" then
      vim.cmd("file " .. os.date("%Y_%m_%d.md"))
    end
  end
})

require "nvchad.autocmds"

vim.api.nvim_create_autocmd("BufDelete", {
    callback = function()
        local bufs = vim.t.bufs
        if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
            vim.cmd "Nvdash"
        end
    end,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "LazyLoad",
    callback = function(event)
        if event.data == "telescope.nvim" then
            require("telescope").load_extension("fzf")
            return true -- Deletes the autocommand automatically
        end
    end,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "LazyLoad",
    callback = function(event)
        if event.data == "telescope.nvim" then
            require("telescope").load_extension("ui-select")
            return true
        end
    end,
})

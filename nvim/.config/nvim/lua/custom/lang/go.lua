-- set a keymap for this command GoTagAdd JSON
vim.api.nvim_set_keymap('n', '<leader>gta', ':GoTagAdd json<CR>', {
    noremap = true,
    silent = true
})
return {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
        require("gopher").setup {
            commands = {
                go = "go",
                gomodifytags = "gomodifytags",
                gotests = "~/go/bin/gotests",
                impl = "impl",
                iferr = "iferr"
            }
        }

    end,
    build = function()
        vim.cmd [[silent! GoInstallDeps]]
    end
}


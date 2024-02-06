return {
    'rmagatti/session-lens',
    requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    config = function()
        local sessionLens = require('session-lens')
        sessionLens.setup({
            path_display = {'shorten'},
            previewer = true
        })

        vim.cmd("command! -nargs=0 SessionSearch :lua require('session-lens').search_session()")
        vim.keymap.set("n", "<leader>ds", ":SessionSearch<CR>", {
            noremap = true,
            desc = "Search session"
        })
    end
}

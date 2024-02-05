-- vim.g.copilot_assume_mapped = true
-- return {
--     "github/copilot.vim",
--     opt = true,
--     cmd = {"Copilot"}
-- }
-- lspkind.lua
return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require('copilot').setup({
            panel = {
                enabled = true,
                auto_refresh = false,
                keymap = {
                    jump_prev = "[[",
                    jump_next = "]]",
                    accept = "<CR>",
                    refresh = "gr",
                    open = "<M-CR>"
                },
                layout = {
                    position = "right", -- | top | left | right
                    ratio = 0.4
                }
            },
            suggestion = {
                enabled = true,
                auto_trigger = true,
                debounce = 75,
                keymap = {
                    accept = false,
                    accept_word = false,
                    accept_line = false,
                    next = "<M-]>",
                    prev = "<M-[>",
                    dismiss = "<C-]>"
                }
            },
            filetypes = {
                yaml = false,
                markdown = true,
                help = false,
                gitcommit = true,
                gitrebase = false,
                hgcommit = false,
                svn = false,
                cvs = false,
                ["."] = false
            },
            copilot_node_command = 'node',
            server_opts_overrides = {}
        })

        vim.keymap.set("i", "<Tab>", function()
            if require("copilot.suggestion").is_visible() then
                require("copilot.suggestion").accept()
            else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
            end
        end, {
            desc = "Super Tab"
        })

    end
}

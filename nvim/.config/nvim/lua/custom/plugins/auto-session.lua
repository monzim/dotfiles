return {
    'rmagatti/auto-session',
    config = function()
        require("auto-session").setup {
            log_level = vim.log.levels.ERROR,
            auto_session_suppress_dirs = {"~/", "~/Projects", "~/Downloads", "/"},
            auto_session_use_git_branch = false,
            auto_session_enable_last_session = true, -- enable the last session
            session_lens = {
                buftypes_to_ignore = {},
                load_on_setup = true,
                theme_conf = {
                    border = true
                },
                previewer = false
            }
        }

    end
}


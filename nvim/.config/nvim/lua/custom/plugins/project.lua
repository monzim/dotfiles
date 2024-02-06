return {
    "ahmedkhalf/project.nvim",
    opts = {
        manual_mode = true
    },
    event = "VeryLazy",
    config = function(_, opts)
        require("project_nvim").setup(opts)
    end,
    keys = {{
        "<leader>fp",
        "<Cmd>Telescope projects<CR>",
        desc = "Projects"
    }}
}

vim.g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        unstaged = "",
        staged = "S",
        unmerged = "",
        renamed = "➜",
        deleted = "",
        untracked = "U",
        ignored = "◌",
    },
    folder = {
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
    },
}

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end

local tree_cb = nvim_tree_config.nvim_tree_callback
-- empty setup using defaults
nvim_tree.setup()

-- OR setup with some options
nvim_tree.setup({
    sort_by = "case_sensitive",
    open_on_setup = false,
    view = {
        width = 30,
        side = "right",
        relativenumber = true ,
        mappings = {
            custom_only = false,
            list = {
                { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
                { key = "h", cb = tree_cb "close_node" },
                { key = "v", cb = tree_cb "vsplit" },
            },
        },
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

-- KeyMaps
-- Open NvimTree
vim.keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>", { noremap = true })

-- Navigate up in NvimTree
-- vim.keymap.set("n", "<leader>nu", ":NvimTreeUp<CR>", {noremap=true})

-- Navigate down in NvimTree
-- vim.keymap.set("n", "<leader>nd", ":NvimTreeDown<CR>", {noremap=true})

-- Navigate to the first child in NvimTree
-- vim.keymap.set("n", "<leader>nf", ":NvimTreeFirstChild<CR>", {noremap=true})

-- Navigate to the last child in NvimTree
-- vim.keymap.set("n", "<leader>nl", ":NvimTreeLastChild<CR>", {noremap=true})

-- Open the current node in NvimTree
-- vim.keymap.set("n", "<leader>no", ":NvimTreeOpen<CR>", {noremap=true})

-- Close the current node in NvimTree
-- vim.keymap.set("n", "<leader>nc", ":NvimTreeClose<CR>", {noremap=true})

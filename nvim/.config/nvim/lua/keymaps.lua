-- [[ Basic Keymaps ]]
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {
    silent = true
})

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", {
    expr = true,
    silent = true
})
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", {
    expr = true,
    silent = true
})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {
    desc = 'Go to previous diagnostic message'
})
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {
    desc = 'Go to next diagnostic message'
})
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {
    desc = 'Open floating diagnostic message'
})
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, {
    desc = 'Open diagnostics list'
})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', {
    clear = true
})
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*'
})

-- vim: ts=2 sts=2 sw=2 et

-- MY KEYMAPS--
-- Press jk fast to enter

-------------------------------------------------
local opts = {
    noremap = true,
    silent = true
} -- Define options for keymaps

-- set keymap to navigate between buffers to tab in normal
vim.keymap.set('n', '<TAB>', ':bnext<CR>', {
    noremap = true,
    silent = true,
    desc = 'Go to next buffer'
})

vim.keymap.set('n', '<S-TAB>', ':bprevious<CR>', {
    noremap = true,
    silent = true,
    desc = 'Go to previous buffer'
})

-- set keymap that will format the code then save the file
vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', {
    noremap = true,
    silent = true,
    desc = 'Format the code'
})

-- Insert mode
-- Keymap for inserting "<ESC>" when "jk" is typed in insert mode
vim.keymap.set("i", "jk", "<ESC>", opts)

-- Normal mode
vim.keymap.set("n", ";", ":", opts)
vim.keymap.set("n", "<leader>w", ":up<CR>", opts)

vim.keymap.set("n", "<leader>q", ":q<CR>", opts)
vim.keymap.set("n", "<leader>Q", ":q!<CR>", opts)
vim.keymap.set("n", "<leader>W", ":w<CR>", opts)
vim.keymap.set("n", "<leader>WQ", ":wq<CR>", opts)
vim.keymap.set("n", "<leader>n", ":tabnew<cr>", opts)
vim.keymap.set("n", "<leader>c", ":tabclose<cr>", opts)
vim.keymap.set("n", "<leader>v", ":vsplit<cr>", opts)
vim.keymap.set("n", "<leader>h", ":split<cr>", opts)
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex, opts)
vim.keymap.set("n", "J", "mzJ`z", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Visual mode
vim.keymap.set("v", ";", ":", opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-------------------------------------------------
-- Set keymap for normal mode to execute the Ex command
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

-- Set keymap for visual mode to move the selected lines down one line and reselect
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Set keymap for visual mode to move the selected lines up two lines and reselect
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Set keymap for "J" in normal mode to join lines and return to the cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- Set keymap for "<C-d>" in normal mode to scroll down and return to the cursor position
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Set keymap for "<C-u>" in normal mode to scroll up and return to the cursor position
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Set keymap for "n" in normal mode to move to the next search result and visually select it
vim.keymap.set("n", "n", "nzzzv")

-- Set keymap for "N" in normal mode to move to the previous search result and visually select it
vim.keymap.set("n", "N", "Nzzzv")

-- set a custom keymap to toggle the tree leader + b
vim.keymap.set('n', '<Leader>b', ':Neotree toggle<CR>', {
    noremap = true,
    silent = true
})

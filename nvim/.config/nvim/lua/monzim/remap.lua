-- Author: Monzim <
-- vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)

vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])


-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- write keymap that will comment out the current line or selected lines
-- if the line is already commented, uncomment it instead (toggle)
vim.keymap.set("n", "<leader>/", "<cmd>CommentToggle<CR>", { silent = true })
vim.keymap.set("v", "<leader>/", "<cmd>CommentToggle<CR>", { silent = true })

--vim.keymap.set("x", "<leader>/", ":norm i#<CR>", { silent = true })
function _G.commentPrompt()
    local comment = vim.fn.input("Comment: ")
    local visual_mode = vim.fn.visualmode()
    if visual_mode == "V" then
        local lines = vim.fn.getline("'<", "'>")
        for i, line in ipairs(lines) do
            lines[i] = comment .. line
        end
        vim.fn.setline("'<", "'>", lines)
    else
        vim.cmd(":norm i" .. comment .. " <CR>")
    end
end

vim.keymap.set("n", "<leader>gcc", "<cmd>lua commentPrompt()<CR>", { silent = true })
-- vim.keymap.set("x", "<leader>/", "<cmd> lua commentPrompt()<CR>", { silent = true })

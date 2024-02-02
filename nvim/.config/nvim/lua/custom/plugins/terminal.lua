return {
    "akinsho/toggleterm.nvim",
    version = '*',
    config = function()
        require("toggleterm").setup {
            -- size can be a number or function which is passed the current terminal
            size = vim.o.columns * 0.4,
            open_mapping = [[<c-\>]],
            autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
            direction = 'float', --  'vertical' | 'horizontal' | 'tab' | 'float'
            float_opts = {
                -- The border key is *almost* the same as 'nvim_open_win'
                -- see :h nvim_open_win for details on borders however
                -- the 'curved' border is a custom border type
                -- not natively supported but implemented in this plugin.
                border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
                -- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
                winblend = 3,
                title_pos = 'center' -- 'left' | 'center' | 'right', position of the title of the floating window
            }
        }
    end
}


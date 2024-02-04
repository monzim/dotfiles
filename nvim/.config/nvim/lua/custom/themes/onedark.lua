return {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    config = function()
        require('onedark').setup {
            theme = function()
                if vim.o.background == "dark" then
                    return "onedark"
                else
                    return "onelight"
                end
            end,
            styles = {
                comments = "italic",
                keywords = "bold",
                functions = "italic,bold"
            },
            sidebars = "transparent", -- style for sidebars, see below
            floats = "transparent", -- style for floating windows
            colors = {
                onedark = {
                    bg = "#",
                    purple = "#BA68C8"
                }
            },
            -- Main options --
            style = 'deep', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
            transparent = true, -- Show/hide background
            term_colors = true, -- Change terminal color as per the selected theme style
            ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
            cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

            -- toggle theme style ---
            toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
            toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

            -- Change code style ---
            -- Options are italic, bold, underline, none
            -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
            code_style = {
                comments = 'italic',
                keywords = 'bold',
                functions = 'italic,bold',
                strings = 'italic',
                variables = 'italic'
            },

            -- Lualine options --
            lualine = {
                transparent = false -- lualine center bar transparency
            },

            -- Plugins Config --
            diagnostics = {
                darker = true, -- darker colors for diagnostic
                undercurl = true, -- use undercurl instead of underline for diagnostics
                background = true -- use background color for virtual text
            }
        }
        require('onedark').load()
        ColorMyPencils()
    end
}

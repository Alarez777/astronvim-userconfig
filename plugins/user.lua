return {
    {
        "kylechui/nvim-surround",
        event = "BufRead",
        branch = "main", -- optional but strongly recommended
        config = function()
            require("nvim-surround").setup {
                -- Configuration here, or leave empty to use defaults
            }
        end
    }, {
        "phaazon/hop.nvim",
        event = "VeryLazy",
        branch = "v2", -- optional but strongly recommended
        config = function()
            require("hop").setup {keys = "etovxqpdygfblzhckisura"}
        end
    }, {
        "Shatur/neovim-ayu",
        lazy = false,
        priority = 1000,
        config = function()
            require("ayu").setup {
                mirage = false -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
            }
        end
    }, {"ellisonleao/gruvbox.nvim", lazy = false, priority = 1000},
    {"folke/tokyonight.nvim"},
    {"sainnhe/everforest", lazy = false, priority = 1000},
    {"lotabout/skim", lazy = false, priority = 1000}, {
        "liuchengxu/vista.vim",
        event = "VeryLazy",
        requires = {"lotabout/skim"},
        config = function() vim.g.vista_sidebar_width = 55 end
    }, -- {
    --   "simrat39/symbols-outline.nvim",
    --   event = "VeryLazy",
    --   -- config = function()
    --   --   local opts = {}
    --   --   require("symbols-outline").setup(opts)
    --   -- end,
    -- },
    {
        "Exafunction/codeium.vim",
        event = "VeryLazy",
        config = function()
            vim.g.codeium_disable_bindings = 1
            vim.keymap.set("i", "<Right>",
                           function()
                return vim.fn["codeium#Accept"]()
            end, {expr = true})
            vim.keymap.set("i", "<c-Right>", function()
                return vim.fn["codeium#CycleCompletions"](1)
            end, {expr = true})
            vim.keymap.set("i", "<c-Left>", function()
                return vim.fn["codeium#CycleCompletions"](-1)
            end, {expr = true})
            vim.keymap.set("i", "<c-x>",
                           function()
                return vim.fn["codeium#Clear"]()
            end, {expr = true})
        end
    }, {
        'gen740/SmoothCursor.nvim',
        event = "VeryLazy",
        config = function()
            require('smoothcursor').setup({
                type = "default",
                cursor = "",
                texthl = "SmoothCursor", -- Highlight group. Default is { bg = nil, fg = "#FFD400" }. Disabled in fancy mode.
                linehl = nil, -- Highlights the line under the cursor, similar to 'cursorline'. "CursorLine" is recommended. Disabled in fancy mode.
                autostart = true,
                always_redraw = true, -- Redraw the screen on each update
                flyin_effect = nil, -- Choose "bottom" or "top" for flying effect
                speed = 25, -- Max speed is 100 to stick with your current position
                intervals = 35, -- Update intervals in milliseconds
                priority = 10, -- Set marker priority
                timeout = 3000, -- Timeout for animations in milliseconds
                threshold = 3, -- Animate only if cursor moves more than this many lines
                disable_float_win = false, -- Disable in floating windows
                enabled_filetypes = nil, -- Enable only for specific file types, e.g., { "lua", "vim" }
                disabled_filetypes = nil -- Disable for these file types, ignored if enabled_filetypes is set. e.g., { "TelescopePrompt", "NvimTree" }
            })
        end
    }, {"HiPhish/rainbow-delimiters.nvim", event = "VeryLazy"}
}

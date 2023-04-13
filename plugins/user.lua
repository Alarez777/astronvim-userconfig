return {
    {
        "kylechui/nvim-surround",
        event = "BufRead",
        branch = "main", -- optional but strongly recommended
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    }, {
    "phaazon/hop.nvim",
    event = "BufRead",
    branch = "v2",     -- optional but strongly recommended
    config = function()
        require("hop").setup { keys = "etovxqpdygfblzhckisura" }
    end
}, {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
        require("ayu").setup {
            mirage = false     -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        }
    end
}, { "folke/tokyonight.nvim" }, { "liuchengxu/vista.vim", event = "BufRead" }, {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
        require("chatgpt").setup({
            welcome_message = "Chatgpt para neovim",
            loading_text = "cargando",
            question_sign = "?",     -- you can use emoji if you want e.g. ??
            answer_sign = "?",       -- ??
            max_line_length = 120,
            yank_register = "+",
            chat_layout = {
                relative = "editor",
                position = "50%",
                size = { height = "80%", width = "80%" }
            },
            settings_window = {
                border = { style = "rounded", text = { top = " Settings " } }
            },
            chat_window = {
                filetype = "chatgpt",
                border = {
                    highlight = "FloatBorder",
                    style = "rounded",
                    text = { top = " ChatGPT " }
                }
            },
            chat_input = {
                prompt = " ? ",
                border = {
                    highlight = "FloatBorder",
                    style = "rounded",
                    text = { top_align = "center", top = " Prompt " }
                }
            },
            openai_params = {
                model = "gpt-3.5-turbo",
                frequency_penalty = 0,
                presence_penalty = 0,
                max_tokens = 300,
                temperature = 0,
                top_p = 1,
                n = 1
            },
            openai_edit_params = {
                model = "code-davinci-edit-001",
                temperature = 0,
                top_p = 1,
                n = 1
            },
            keymaps = {
                close = { "<C-c>" },
                submit = "<C-Enter>",
                yank_last = "<C-y>",
                yank_last_code = "<C-k>",
                scroll_up = "<C-u>",
                scroll_down = "<C-d>",
                toggle_settings = "<C-o>",
                new_session = "<C-n>",
                cycle_windows = "<Tab>",
                -- in the Sessions pane
                select_session = "<Space>",
                rename_session = "r",
                delete_session = "d"
            },
            predefined_chat_gpt_prompts =
            "https://raw.githubusercontent.com/atareao/prompts-para-chatgpt/main/prompts.csv",
            actions_paths = {}
        })
    end,
    dependencies = {
        "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    }
}
}

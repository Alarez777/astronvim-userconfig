return {
    n = {
        ["f"] = {
            "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
            desc = "Jump f"
        },
        ["F"] = {
            "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
            desc = "Jump F"
        },
        ["t"] = {
            "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
            desc = "Jump t"
        },
        ["T"] = {
            "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>",
            desc = "Jump T"
        },
        ["<leader>m"] = {":HopChar1<CR>", desc = "Jump promp"},
        ["<leader>fs"] = {
            ":Telescope colorscheme<CR>",
            desc = "Select colorscheme"
        },
        ["<leader>n"] = {":HopLineStart<CR>", desc = "Jump line"},
        ["<Tab><Tab>"] = {":Telescope find_files<CR>", desc = "Find files"},
        ["<Tab>g"] = {":Telescope live_grep<CR>", desc = "Find word"},
        ["<Tab>w"] = {
            ":Telescope grep_string<CR>",
            desc = "Find string in your under cursor"
        },
        ["<Tab>s"] = {
            ":Telescope current_buffer_fuzzy_find<CR>",
            desc = "Find string in your current buffer"
        },
        ["<Tab>h"] = {":bprevious<CR>", desc = "Cambia al siguiente buffer"},
        ["<Tab>l"] = {":bnext<CR>", desc = "Cambia al anterior buffer"},
        ["<Tab>v"] = {":Vista finder skim<CR><CR>", desc = "Vista finder Skim"},
        ["<leader>v"] = {":Vista!!<CR>", desc = "Vista"},
        ["<leader>;"] = {"$a:<Esc>o", desc = "Add ; the end of line"}
    },
    v = {
        ["<Tab>"] = {">gv", desc = "Make ident right"},
        ["<S-Tab>"] = {"<gv", desc = "Make ident left"},
        ["f"] = {
            "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
            desc = "Jump f"
        },
        ["F"] = {
            "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
            desc = "Jump F"
        },
        ["t"] = {
            "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
            desc = "Jump t"
        },
        ["T"] = {
            "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>",
            desc = "Jump T"
        }
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    }
}

local config = {
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "main", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_reload = false, -- automatically reload and sync packer after a successful update
    auto_quit = false, -- automatically quit the current session after a successful update
  },
  colorscheme = "ayu",

  options = {
    opt = {
      relativenumber = true, -- sets vim.opt.relativenumber
      termguicolors = true,
    },
    g = {
      mapleader = " ", -- sets vim.g.mapleader
      tokyonight_style = "night",
    },
  },

  mappings = {
    n = {
      ["f"] = {
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
        desc = "Jump f",
      },
      ["F"] = {
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
        desc = "Jump F",
      },
      ["t"] = {
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
        desc = "Jump t",
      },
      ["T"] = {
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>",
        desc = "Jump T",
      },
      ["<leader>m"] = { ":HopChar1<CR>", desc = "Jump promp" },
      ["<leader>n"] = { ":HopLineStart<CR>", desc = "Jump line" },
      ["<Tab><Tab>"] = { ":Telescope find_files<CR>", desc = "Find files" },
      ["<Tab>l"] = { ":Telescope live_grep<CR>", desc = "Find word" },
      ["<Tab>w"] = { ":Telescope grep_string<CR>", desc = "Find string in your under cursor" },
      ["<Tab>s"] = { ":Telescope current_buffer_fuzzy_find<CR>", desc = "Find string in your current buffer" },
      ["<leader>v"] = { ":Vista!!<CR>", desc = "Vista" },
      ["<leader>;"] = { "$a:<Esc>o", desc = "Add ; the end of line" },
    },
    v = {
      ["<Tab>"] = { ">gv", desc = "Make ident right" },
      ["<S-Tab>"] = { "<gv", desc = "Make ident left" },
      ["f"] = {
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
        desc = "Jump f",
      },
      ["F"] = {
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
        desc = "Jump F",
      },
      ["t"] = {
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
        desc = "Jump t",
      },
      ["T"] = {
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>",
        desc = "Jump T",
      },
    },
    t = {
      -- setting a mapping to false will disable it
      -- ["<esc>"] = false,
    },
  },

  plugins = {
    init = {
      {
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
          require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
          })
        end
      },
      {
        "phaazon/hop.nvim",
        branch = "v2", -- optional but strongly recommended
        config = function()
          require("hop").setup {
            keys = "etovxqpdygfblzhckisuran",
          }
        end,
      },
      {
        "Shatur/neovim-ayu",
        config = function()
          require("ayu").setup {
            mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
          }
        end,
      },
      { "folke/tokyonight.nvim" },
      { "liuchengxu/vista.vim" },
    },

    ["neo-tree"] = {
      event_handlers = {
        {
          -- Automatic close
          event = "file_opened",
          handler = function() require("neo-tree").close_all() end,
        },
      },
    },
  },

  -- LuaSnip Options
  luasnip = {
    -- Add paths for including more VS Code style snippets in luasnip
    vscode_snippet_paths = {},
    -- Extend filetypes
    filetype_extend = {
      javascript = { "javascriptreact" },
    },
  },
}

return config

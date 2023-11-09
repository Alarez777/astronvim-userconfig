return {
  {
    "kylechui/nvim-surround",
    event = "BufRead",
    branch = "main", -- optional but strongly recommended
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "phaazon/hop.nvim",
    event = "VeryLazy",
    branch = "v2", -- optional but strongly recommended
    config = function() require("hop").setup { keys = "etovxqpdygfblzhckisura" } end,
  },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup {
        mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
      }
    end,
  },
  { "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000 },
  { "folke/tokyonight.nvim" },
  { "sainnhe/everforest", lazy = false, priority = 1000 },
  { "lotabout/skim", lazy = false, priority = 1000 },
  {
    "liuchengxu/vista.vim",
    event = "VeryLazy",
    requires = { "lotabout/skim" },
    config = function() vim.g.vista_sidebar_width = 55 end,
  },
  -- {
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
      vim.keymap.set("i", "<Right>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
      vim.keymap.set("i", "<c-Right>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<c-Left>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    end,
  },
  { "HiPhish/rainbow-delimiters.nvim", event = "VeryLazy" },
}

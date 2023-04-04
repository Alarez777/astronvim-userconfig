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
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    branch = "v2", -- optional but strongly recommended
    config = function()
      require("hop").setup {
        keys = "etovxqpdygfblzhckisura",
      }
    end,
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
  { "folke/tokyonight.nvim" },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
  },
  { "liuchengxu/vista.vim", event = "BufRead",
  },
}

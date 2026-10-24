return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {
	  "vim", "lua", "vimdoc",
	  "html", "css", "rust"
	},
      },
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },

  { "danilamihailov/beacon.nvim" },

  { "folke/trouble.nvim", cmd = "Trouble" },

  {
    "kurama622/clean-diagnostic",
    event = "LspAttach",
    opts = {
      border = "rounded",
      min_severity = 4,
      max_width = 78,
    },
    keys = {
      {
        "<leader>sd",
        "<cmd>lua require('clean-diagnostic').show()<cr>",
        desc = "show the diagnostic of the current line",
      },
    },
  },

  { "mrcjkb/rustaceanvim", lazy = false },
}

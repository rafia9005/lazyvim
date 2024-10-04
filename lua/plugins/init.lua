return {
  -- lsp config
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      { "williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true },
      { "folke/lazydev.nvim", ft = "lua" },
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("plugins.configs.plugins.lspconfig")
    end,
  },
  -- nvim tree config
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.configs.plugins.nvim-tree")
    end,
    event = { "BufWinEnter", "BufReadPre" },
  },
  -- bufferline config
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    config = function()
      require("plugins.configs.plugins.bufferline")
    end,
  },
  -- lualine config
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins.configs.plugins.lualine")
    end,
    event = "VeryLazy",
  },
  -- telescope config
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.configs.plugins.telescope")
    end,
  },
  -- terminal config
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup()
    end,
  },
  -- -- dashboard config
  -- {
  --   "nvimdev/dashboard-nvim",
  --   event = "VimEnter",
  --   opts = function(_, opts)
  --     local logo = [[
  --       ██████╗ ███████╗██╗   ██╗     ██████╗ ██████╗ ██████╗ ███████╗
  --       ██╔══██╗██╔════╝██║   ██║    ██╔════╝██╔═══██╗██╔══██╗██╔════╝
  --       ██║  ██║█████╗  ██║   ██║    ██║     ██║   ██║██║  ██║█████╗
  --       ██║  ██║██╔══╝  ╚██╗ ██╔╝    ██║     ██║   ██║██║  ██║██╔══╝
  --       ██████╔╝███████╗ ╚████╔╝     ╚██████╗╚██████╔╝██████╔╝███████╗
  --       ╚═════╝ ╚══════╝  ╚═══╝       ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝
  --     ]]
  --
  --     logo = string.rep("\n", 8) .. logo .. "\n\n"
  --     opts.config.header = vim.split(logo, "\n")
  --   end,
  -- },
}

return {
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
      require("plugins.configs.lspconfig")
    end,
  },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.configs.nvim-tree")
    end,
    event = { "BufWinEnter", "BufReadPre" },
  },
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    config = function()
      require("plugins.configs.bufferline")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins.configs.lualine")
    end,
    event = "VeryLazy",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.configs.telescope")
    end,
  },
}

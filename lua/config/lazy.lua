local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "solarized-osaka",
      },
    },
    -- {
    --   "folke/tokyonight.nvim",
    --   lazy = false, -- Load at startup
    --   priority = 1000, -- Ensure it loads first
    --   opts = {
    --     style = "night", -- Use the night style
    --     transparent = true, -- Enable transparency
    --     terminal_colors = true, -- Apply transparency to the terminal
    --   },
    -- },
    {
      "craftzdog/solarized-osaka.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        transparent = false,
      },
    },
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "plugins" },
    { "lukas-reineke/indent-blankline.nvim", enabled = true },
    { "folke/noice.nvim", enabled = true },
    -- { "akinsho/bufferline.nvim", enabled = false },
    { "rcarriga/nvim-notify", enabled = false },
    { "glepnir/dashboard-nvim", enabled = false },
    { import = "lazyvim.plugins.extras.formatting.prettier" },
    -- lsp config
    { import = "lazyvim.plugins.extras.lang.typescript" },
  },
  defaults = {
    lazy = true,
    version = false,
  },
  checker = { enabled = false },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

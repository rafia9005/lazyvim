vim.opt.laststatus = 3

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    global_status = true,
  },
  extensions = { "nvim-tree", "quickfix" },
})

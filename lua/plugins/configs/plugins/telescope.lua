require("telescope").setup({
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "➜ ",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = { width = 0.75, preview_width = 0.5 },
      vertical = { width = 0.9, preview_height = 0.5 },
    },
    sorting_strategy = "descending",
    file_ignore_patterns = { ".git/", "node_modules/", "*.o", "*.out", "*.class" },
    color_devicons = true,
  },
  pickers = {
    find_files = {
      theme = nil,
      previewer = true,
      hidden = false,
    },
    live_grep = {
      theme = nil,
    },
    buffers = {
      theme = nil,
      sort_lastused = false,
    },
    help_tags = {
      theme = nil,
    },
  },
})

local builtin = require("telescope.builtin")
vim.api.nvim_set_keymap(
  "n",
  "<leader>ff",
  "<cmd>lua require('telescope.builtin').find_files()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fg",
  "<cmd>lua require('telescope.builtin').live_grep()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fb",
  "<cmd>lua require('telescope.builtin').buffers()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fh",
  "<cmd>lua require('telescope.builtin').help_tags()<CR>",
  { noremap = true, silent = true }
)

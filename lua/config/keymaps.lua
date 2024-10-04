-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next tab" })
map("n", "<leader>rn", ":IncRename ")

-- New keymap for terminal toggling
map({ "n", "i", "t" }, "<A-h>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Toggle horizontal terminal" })

map({ "n", "i", "t" }, "<A-v>", function()
  require("nvterm.terminal").toggle("vertical")
end, { desc = "Toggle vertical terminal" })

map({ "n", "i", "t" }, "<A-i>", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "Toggle floating terminal" })

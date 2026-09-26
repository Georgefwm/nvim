require "nvchad.mappings"

-- Remove some undesired nvchad defaults
local del = vim.keymap.del

-- Both of these collide with my muscle memory of <leader>w to write
del("n", "<leader>wK")   -- whichkey all keymaps
del("n", "<leader>wk")   -- whichkey query lookup

-- Add my extra keymaps
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>") -- ??

map("n", "U", "<C-r>", { desc = "Redo change" })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Save/Write file" })
map("n",           "<leader>w", "<cmd> w <cr>", { desc = "Save/Write file" })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Flutter Keymaps
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope flutter commands<cr>", { desc = "Flutter Commands" })

-- Rust Keymaps
vim.keymap.set("n", "<leader>rr", "<cmd>RustRunnables<cr>", { desc = "Run Rust Project"})
vim.keymap.set("n", "<leader>ru", "<cmd>RustMoveItemUp<cr>", { desc = "Move Item Up"})
vim.keymap.set("n", "<leader>rd", "<cmd>RustMoveItemDown<cr>", { desc = "Move Item Down"})
vim.keymap.set("n", "<leader>rj", "<cmd>RustJoinLines<cr>", { desc = "Join Lines"})
vim.keymap.set("n", "<leader>rh", "<cmd>RustHoverActions<cr>", { desc = "Hover Actions"})
vim.keymap.set("n", "<leader>rc", "<cmd>RustOpenCargo<cr>", { desc = "Open Cargo"})
vim.keymap.set("n", "<leader>rg", "<cmd>RustViewCrateGraph<cr>", { desc = "View Crates Graph"})

-- Rust Crates Keymaps
local crates = require('crates')

vim.keymap.set('n', '<leader>cu', crates.update_crate, { desc = "Update Crate"})
vim.keymap.set('n', '<leader>cU', crates.update_all_crates, { desc = "Update All Crates"})
vim.keymap.set('n', '<leader>cgu', crates.upgrade_crate, { desc = "Upgrade Crate"})
vim.keymap.set('n', '<leader>cgU', crates.upgrade_all_crates, { desc = "Upgrade All Crates"})

vim.keymap.set('n', '<leader>ci', crates.expand_plain_crate_to_inline_table, { desc = "Expand Plain Crate To Inline Table"})
vim.keymap.set('n', '<leader>ct', crates.extract_crate_into_table, { desc = "Extract Crate Into Table"})

vim.keymap.set('n', '<leader>ch', crates.open_homepage, { desc = "Open Crate Homepage"})
vim.keymap.set('n', '<leader>cr', crates.open_repository, { desc = "Open Crate Repository"})
vim.keymap.set('n', '<leader>cd', crates.open_documentation, { desc = "Open Crate Documentation"})
vim.keymap.set('n', '<leader>ci', crates.open_crates_io, { desc = "Open Crate in crates.io"})

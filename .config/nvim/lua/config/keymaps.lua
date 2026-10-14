-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local bufnr = vim.api.nvim_get_current_buf()
local Terminal = require("toggleterm.terminal").Terminal
local map = vim.keymap.set

map(
  "n",
  "<leader>a",
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
)
map(
  "n",
  "K",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({'hover', 'actions'})
  end,
  { silent = true, buffer = bufnr }
)

local builtin = require("telescope.builtin")

map("n", 'ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', 'fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', 'fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', 'fh', builtin.help_tags, { desc = 'Telescope help tags' })


map("n", "e", "<Cmd>Neotree<CR>")
map("n", "ee", ":Neotree close<CR>")

map("n", "rr", ":restart<CR>")
map("n", "ww", ":w<CR>")
map("n", "wq", ":wq<CR>")

-- ToggleTerm

local lazygit = Terminal:new({ cmd = "lazygit", count = 5, hidden = true })
local terminal = Terminal:new({ count = 5, hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

function _terminal_toggle()
  terminal:toggle(1, "float")
end


map("n", "tg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
map("n", "t", "<cmd>lua _terminal_toggle()<CR>", {noremap = true, silent = true})

-- lua/config/keymaps.lua
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Normal mode keymaps
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
-- Format using LSP
map("n", "<leader>gf", function() vim.lsp.buf.format() end, { desc = "Format buffer using LSP" })

-- Visual mode keymaps
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })

-- Insert mode keymaps
map("i", "jj", "<Esc>", { desc = "Escape insert mode" })

map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neo-tree" })

map('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })
map('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })


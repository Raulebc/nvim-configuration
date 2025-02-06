return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
    keys = {  -- Lazy-load on these key mappings
      { "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Live Grep" },
    }
	},
}

return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			defaults = {
				hidden = true,
				file_ignore_patterns = {},
				prompt_prefix = " ",
				selection_caret = " ",
				entry_prefix = "  ",
				initial_mode = "insert",
				selection_strategy = "reset",
				sorting_strategy = "descending",
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.55,
						results_width = 0.8,
					},
					vertical = {
						mirror = false,
					},
					width = 0.87,
					height = 0.80,
					preview_cutoff = 120,
				},
			},
		},
		keys = { -- Lazy-load on these key mappings
			{ "<C-p>", "<cmd>lua require('telescope.builtin').find_files({ hidden = true, no_ignore = true })<cr>", desc = "Find Files" },
			{ "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", desc = "Live Grep" },
		},
	},
}

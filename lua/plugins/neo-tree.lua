return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      window = {
        position = "right", -- Ensure the window stays on the right
      },
      close_if_last_window = true,
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = true,
        },
      },
    },
    config = function(_, opts)
      require("neo-tree").setup(opts)

      -- Set highlights inside an autocommand to ensure they apply correctly
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#1e1e2e" })
          vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#1e1e2e" })
          vim.api.nvim_set_hl(0, "NeoTreeFloatNormal", { bg = "#1e1e2e" })
        end,
      })

      -- Manually apply the highlight at startup
      vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#1e1e2e" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#1e1e2e" })
      vim.api.nvim_set_hl(0, "NeoTreeFloatNormal", { bg = "#1e1e2e" })
    end,
  },
}


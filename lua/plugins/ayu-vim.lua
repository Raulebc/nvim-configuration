return {
  "ayu-theme/ayu-vim",
  lazy = false,    -- Load immediately (critical for colorschemes)
  priority = 1000, -- High priority ensures early loading
  config = function()
    -- Set theme variant (choose one)
    vim.g.ayucolor = "mirage"  -- "mirage" (dark), "light", or "dark"

    -- Optional extended color palette
    -- vim.g.ayu_extended_palette = 1

    -- Apply the colorscheme
    vim.cmd.colorscheme('ayu')
  end,
}

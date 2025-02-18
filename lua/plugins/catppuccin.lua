return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- Keeping mocha as the base
      color_overrides = {
        mocha = {
          base = "#242936",      -- Ayu Mirage Background
          mantle = "#1F2430",    -- Slightly darker
          crust = "#171B24",     -- Darkest background
          text = "#CCCAC2",      -- Foreground
          subtext1 = "#707A8C",  -- Secondary text
          subtext0 = "#5C6773",  -- Comments (Dimmed)
          overlay2 = "#343F4C",  -- Slightly darker than selection
          overlay1 = "#2E3C43",  -- CursorLine
          overlay0 = "#232830",  -- Close to background
          surface2 = "#343F4C",  -- Selection color
          surface1 = "#1F2430",  -- Same as base
          surface0 = "#1A1E28",  -- Slightly darker
          -- Main Colors
          blue = "#5CCFE6",      -- Modified
          green = "#87D96C",     -- Strings, added lines
          yellow = "#EEA262",    -- Functions
          peach = "#FFCC66",     -- Borders, warnings
          red = "#F27983",       -- Errors, deleted lines
          maroon = "#FFB454",    -- Keywords (Orange)
          pink = "#D4BFFF",      -- Variables, numbers
          mauve = "#CBCCC6",     -- General Text
          lavender = "#5CCFE6",  -- Same as blue
          flamingo = "#F07178",  -- Close to red
          rosewater = "#F07178", -- Same as red
        },
      },
      integrations = {
        cmp = true,
        telescope = {
          enabled = true,
          borderchars = {
            prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            results = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
          },
        },
        treesitter = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            warnings = { "undercurl" },
            hints = { "undercurl" },
            information = { "undercurl" },
          },
        },
      },
    },
    config = function()
      vim.cmd.colorscheme("catppuccin")

      -- Apply Ayu Mirage Highlight Overrides
      local set_hl = vim.api.nvim_set_hl
      set_hl(0, "Normal", { bg = "#242936", fg = "#CCCAC2" })
      set_hl(0, "Comment", { fg = "#5C6773", italic = true })
      set_hl(0, "CursorLine", { bg = "#2E3C43" })
      set_hl(0, "LineNr", { fg = "#5C6773" })
      set_hl(0, "PmenuBorder", { fg = "#FFCC66" }) -- Borders
      set_hl(0, "FloatBorder", { fg = "#FFCC66" }) -- Floating Borders
      set_hl(0, "Visual", { bg = "#343F4C" }) -- Selection
      set_hl(0, "Keyword", { fg = "#eea362", bold = true }) -- Keywords
      set_hl(0, "Function", { fg = "#FFD173" }) -- Functions
      set_hl(0, "String", { fg = "#87D96C" }) -- Strings
      set_hl(0, "Type", { fg = "#73D0FF" }) -- Types
      set_hl(0, "Variable", { fg = "#D4BFFF" }) -- Variables
      set_hl(0, "Error", { fg = "#F27983", bold = true }) -- Errors
      set_hl(0, "WarningMsg", { fg = "#FFCC66", bold = true }) -- Warnings
      set_hl(0, "Info", { fg = "#80BFFF" }) -- Information
      set_hl(0, "Hint", { fg = "#5CCFE6" }) -- Hints
    end,
  },
}


return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "phpactor",
        "ts_ls",
        "vuels",
        "html",
        "jsonls",
        "bashls",
        "sqlls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config.lua_ls = {
        settings = {
          Lua = { diagnostics = { globals = { "vim" } } }
        }
      }

      vim.lsp.config.phpactor = {}
      vim.lsp.config.ts_ls = {}
      vim.lsp.config.vuels = {}
      vim.lsp.config.html = {}
      vim.lsp.config.jsonls = {}
      vim.lsp.config.bashls = {}
      vim.lsp.config.sqlls = {}

    end,
  },
}


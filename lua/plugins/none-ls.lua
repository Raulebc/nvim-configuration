return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvimtools/none-ls-extras.nvim", -- Add this dependency
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- PHP
        null_ls.builtins.formatting.phpcsfixer, -- PHP Coding Standards Fixer
        null_ls.builtins.diagnostics.phpstan, -- PHP Static Analysis Tool

        -- JavaScript/TypeScript (React, Vue, jQuery)
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
        }),
        -- Replace the old eslint_d diagnostics with the one from none-ls-extras
        require("none-ls.diagnostics.eslint_d").with({
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
        }),

        -- Blade Templates (Laravel)
        null_ls.builtins.formatting.blade_formatter,

        -- Git
        null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.diagnostics.commitlint,

        -- SQL (MySQL)
        null_ls.builtins.formatting.sql_formatter,
        null_ls.builtins.diagnostics.sqlfluff.with({
          filetypes = { "sql", "mysql" },
        }),

        -- General
        null_ls.builtins.formatting.stylua,
      },
    })
  end,
}

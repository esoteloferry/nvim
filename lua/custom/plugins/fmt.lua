return {
  { -- Autoformat
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'black' },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        -- javascript = { { "prettierd", "prettier" } },
        javascript = { 'prettier', 'eslint' },
        typescript = { 'prettier', 'eslint' },
        css = { 'prettier', 'stylelint' },
        javascriptreact = { 'prettier', 'eslint' },
        typescriptreact = { 'prettier', 'eslint' },
        rust = { 'rustfmt' },
        go = { 'goimports-reviser', 'gofumpt', 'golines' },
        templ = { 'templ' },
        sql = { 'sqlfmt' },
        json = { 'fixjson' },
        -- sql = { 'sqlfluff' },
        -- sql = { 'sql_formatter' },
      },
    },
  },
}

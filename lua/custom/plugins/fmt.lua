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
        -- javascript = { 'prettierd', 'eslint' },
        -- typescript = { 'prettierd', 'eslint' },
        -- javascriptreact = { 'prettierd', 'eslint' },
        -- typescriptreact = { 'prettier', 'prettierd', 'eslint' },
        -- svelte = { 'prettierd', 'eslint' },
        -- json = { 'fixjson' },
        -- css = { 'prettierd', 'stylelint' },
        javascript = { 'biome-check' },
        typescript = { 'biome-check' },
        javascriptreact = { 'biome-check' },
        typescriptreact = { 'biome-check' },
        svelte = { 'biome-check' },
        json = { 'biome-check' },
        css = { 'biome-check' },

        html = { 'prettierd' },
        rust = { 'rustfmt' },
        go = { 'goimports-reviser', 'gofumpt', 'golines' },
        templ = { 'goimports-reviser', 'gofumpt', 'templ', 'golines' },
        sql = { 'sqlfmt' },
        -- sql = { 'sqlfluff' },
        -- sql = { 'sql_formatter' },
      },
    },
  },
}

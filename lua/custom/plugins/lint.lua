return {
  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'

      -- Register linters
      lint.linters_by_ft = {
        lua = { 'luacheck' },
        -- python = { 'flake8', 'mypy' },
        javascript = { 'biomejs' },
        typescript = { 'biomejs' },
        javascriptreact = { 'biomejs' },
        typescriptreact = { 'biomejs' },
        -- svelte = { 'biomejs' },
        -- json = { 'jsonlint' },
        -- css = { 'stylelint' },
        -- html = { 'htmlhint' },
        -- rust = { 'cargo' },
        -- go = { 'golangci_lint' },
        -- sql = { 'sqlfluff' },
      }

      -- Automatically lint on save
      vim.api.nvim_create_autocmd('BufWritePost', {
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}

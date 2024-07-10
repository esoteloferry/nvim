return {

  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {

        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
        current_line_blame = true,
      }

      vim.keymap.set('n', '<leader>hs', ':Gitsigns stage_hunk<CR>')
      vim.keymap.set('n', '<leader>hu', ':Gitsigns undo_stage_hunk<CR>')
    end,
  },
  {
    'tpope/vim-fugitive',
    -- cmd = "Git",
    config = function()
      vim.keymap.set('n', '<leader>c', '<cmd>:vertical Git<CR><cmd>:vertical resize 50<CR>', { desc = 'Open git editor' })
      vim.keymap.set('n', '<leader>cg', '<C-w><C-o>', { desc = 'Close all diff and git editor' })
      vim.keymap.set('n', '<leader>d', '<cmd>:Gvdiffsplit<CR>', { desc = 'Git diff vertical split' })
    end,
  },
}

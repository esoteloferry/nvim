return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      shade_terminals = false,
    }
    vim.keymap.set('n', '<leader>t', ':ToggleTerm direction=vertical size=80 name=terminal<CR>', { desc = 'Toggle terminal' })
  end,
}

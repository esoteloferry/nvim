return {
  {
    'Jay-Madden/auto-fix-return.nvim',
    config = function()
      require('auto-fix-return').setup {}
    end,
    lazy = false,
    enabled = true,
  },
  {
    'catgoose/templ-goto-definition',
    ft = { 'go', 'templ' },
    config = true,
  },
}

return {
  -- {
  --   'ray-x/go.nvim',
  --   dependencies = { -- optional packages
  --     'ray-x/guihua.lua',
  --     'neovim/nvim-lspconfig',
  --     'nvim-treesitter/nvim-treesitter',
  --   },
  --   config = function()
  --     require('go').setup()
  --
  --     vim.keymap.set('n', '<leader><leader>', ':GoTestFile<CR>', {})
  --   end,
  --   event = { 'CmdlineEnter' },
  --   ft = { 'go', 'gomod' },
  --   build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  -- },
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

require 'custom.options'
require 'custom.mappings'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'github/copilot.vim',
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- 'nanotee/sqls.nvim',
  { 'jghauser/mkdir.nvim' },
  {
    'numToStr/Comment.nvim',
  },
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    'mattn/emmet-vim',
    config = function()
      vim.g.user_emmet_install_global = 0
      --TODO: add emmet to templ
      -- require('emmet').setup {
      --
      -- filetypes = { 'html', 'css', 'templ', 'jsx', 'tsx' },
      -- }
      --   vim.g.emm
      -- autocmd FileType html,css,templ,jsx,tsx EmmetInstall
    end,
  },
  {
    'olrtg/nvim-emmet',
    config = function()
      vim.keymap.set({ 'n', 'v' }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },
  -- {
  --   'rcarriga/nvim-notify',
  --   config = function()
  --     require('notify').setup {
  --       background_colour = '#000000',
  --       enabled = false,
  --     }
  --   end,
  -- },

  -- {
  --   'folke/noice.nvim',
  --   config = function()
  --     require('noice').setup {
  --       -- add any options here
  --       routes = {
  --         {
  --           filter = {
  --             event = 'msg_show',
  --             any = {
  --               { find = '%d+L, %d+B' },
  --               { find = '; after #%d+' },
  --               { find = '; before #%d+' },
  --               { find = '%d fewer lines' },
  --               { find = '%d more lines' },
  --             },
  --           },
  --           opts = { skip = true },
  --         },
  --       },
  --     }
  --   end,
  --   dependencies = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     'MunifTanjim/nui.nvim',
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     -- 'rcarriga/nvim-notify',
  --   },
  -- },
  {
    'luckasRanarison/tailwind-tools.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {}, -- your configuration
  },

  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc', 'javascript', 'typescript' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
    config = function(_, opts)
      require('nvim-treesitter.install').prefer_git = true
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)
    end,
  },

  { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

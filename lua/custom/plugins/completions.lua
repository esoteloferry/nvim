return {
  {
    'L3MON4D3/LuaSnip',
    event = 'VeryLazy',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'onsails/lspkind.nvim', -- vs-code like pictograms
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-emoji',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    },
  },
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require 'cmp'

      local luasnip = require 'luasnip'
      luasnip.config.setup {}

      local lspkind = require 'lspkind'
      lspkind.init {
        preset = 'default',
      }

      require('luasnip.loaders.from_vscode').lazy_load()

      cmp.setup {
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert {
          ['<Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end,
          ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end,
          ['<CR>'] = cmp.mapping.confirm { select = true },
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
        },

        sources = cmp.config.sources {
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
          { name = 'path' },
          { name = 'buffer' },
          { name = 'emoji', insert = true }, -- emoji completion
        },

        completion = {
          keyword_length = 1,
          completeopt = 'menu,noselect',
        },
      }
    end,
  },
}

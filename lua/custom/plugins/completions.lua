return {

  {
    'L3MON4D3/LuaSnip',
    event = 'VeryLazy',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      require('luasnip.loaders.from_lua').load { paths = { vim.fn.stdpath 'config' .. '/lua/snippets' } }

      local ls = require 'luasnip'
      vim.keymap.set({ 'i', 's' }, '<c-k>', function()
        ls.jump(1)
      end, { silent = true })
      vim.keymap.set({ 'i', 's' }, '<c-j>', function()
        ls.jump(-1)
      end, { silent = true })

      -- vim.keymap.set({ 'i', 's' }, '<C-E>', function()
      --   if ls.choice_active() then
      --     ls.change_choice(1)
      --   end
      -- end, { silent = true })
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'VeryLazy',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'luckasRanarison/tailwind-tools.nvim',
      'onsails/lspkind.nvim', -- vs-code like pictograms
      'L3MON4D3/LuaSnip',
    },
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
        experimental = { ghost_text = true },
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
          { name = 'nvim_lsp_signature_help' },
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

        -- configure lspkind for vs-code like pictograms in completion menu
        formatting = {
          format = lspkind.cmp_format {
            before = require('tailwind-tools.cmp').lspkind_format,
            maxwidth = 50,
            ellipsis_char = '...',
          },
        },
      }
    end,
  },
}

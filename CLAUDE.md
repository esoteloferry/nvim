# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

Personal Neovim configuration forked from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). Plugin management is handled by [lazy.nvim](https://github.com/folke/lazy.nvim), which auto-installs on first launch.

## In-editor commands

- `:Lazy` — view/update/profile plugins
- `:Mason` — manage LSP servers, linters, formatters
- `:TSUpdate` — update treesitter parsers
- Source a file to reload it: `:luafile %` or restart Neovim

## Architecture

```
init.lua                        ← entry point: loads options, mappings, lazy.nvim, plugins
lua/custom/
  options.lua                   ← vim.opt settings and globals (leader = 'n')
  mappings.lua                  ← keymaps and autocommands
  plugins/
    lsp.lua                     ← mason + mason-lspconfig + nvim-lspconfig (all LSP servers)
    fmt.lua                     ← conform.nvim (format-on-save)
    lint.lua                    ← nvim-lint (lint-on-save)
    completions.lua             ← nvim-cmp + LuaSnip
    telescope.lua               ← fuzzy finder + keymaps
    git.lua                     ← gitsigns + vim-fugitive
    nav.lua                     ← harpoon2, leap.nvim, neoscroll, indent-blankline
    colorscheme.lua             ← gruvbox (active), tokyonight, solarized-osaka, nightfox
    status.lua                  ← lualine (custom eviline-style config)
    tab.lua                     ← bufferline
    shell.lua                   ← toggleterm
    persisted.lua               ← auto-session (session management)
    go.lua                      ← auto-fix-return, templ-goto-definition
    todo.lua, trouble.lua, autopairs.lua, …
lua/snippets/
  go.lua                        ← LuaSnip snippets for Go (pf, ife, ifel, ifew, ma)
```

Each file under `lua/custom/plugins/` returns a lazy.nvim plugin spec table and is auto-imported via `{ import = 'custom.plugins' }` in `init.lua`.

## Key configuration facts

- **Leader key**: `n` (set in `options.lua` — not `<Space>` or `,`)
- **Format on save**: conform.nvim triggers automatically at `BufWritePre`
  - Go: `goimports-reviser` → `gofumpt` → `golines`
  - JS/TS/JSON/CSS: `biome-check`
  - Lua: `stylua`
- **Lint on save**: nvim-lint runs at `BufWritePost` (biome for JS/TS, luacheck for Lua)
- **LSP servers** managed by Mason: gopls, ts_ls, biome, pyright, rust_analyzer, clangd, lua_ls, templ, tailwindcss, svelte, terraformls, and more
- **Snippets**: LuaSnip loads from `lua/snippets/` (Lua API format); navigate with `<C-k>` / `<C-j>` in insert/select mode

## Adding a new plugin

Create a new file in `lua/custom/plugins/` that returns a lazy.nvim spec, or add to an existing relevant file. It will be auto-discovered. Alternatively, add inline to `init.lua` for simple single-line plugins.

## Adding a new LSP server

In `lua/custom/plugins/lsp.lua`, add the server name to the `servers` table and add it to `ensure_installed` in the `mason-tool-installer` call if Mason should auto-install it.

## Adding Go snippets

Add entries to `lua/snippets/go.lua` using the LuaSnip Lua API (`s`, `t`, `i`, `parse` from `session.config.snip_env`).

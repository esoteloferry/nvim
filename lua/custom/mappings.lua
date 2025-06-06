-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
vim.keymap.set('n', '<leader>s', '<cmd>:w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', '<cmd>:q<CR>', { desc = 'Close window' })
vim.keymap.set('n', '<leader>qq', '<cmd>:qa<CR>', { desc = 'Close all files' })
vim.keymap.set('n', '<leader>w', '<cmd>:bd<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>v', '<cmd>:vs<CR>', { desc = 'Vertical split' })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- -- Diagnostic keymaps
-- vim.keymap.set('n', '[a', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
-- vim.keymap.set('n', ']a', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- vim.keymap.set('n', '<leader>a', vim.diagnostic.setloclist, { desc = 'Open diagnostic Quickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Folding
vim.keymap.set('n', '<Space>', '@=(foldlevel(".")?"za":"<Space>")<CR>', { desc = 'Toggle' })
vim.keymap.set('n', '<Space><Space>', 'zA', { desc = 'Toggle all' })
vim.keymap.set('n', '<Space>r', 'zr', { desc = 'Fold local' })
vim.keymap.set('n', '<Space>m', 'zm', { desc = 'Unfold local' })

-- Better tabbing
vim.keymap.set('v', '<', '<gv', { desc = 'Tab right <' })
vim.keymap.set('v', '>', '>gv', { desc = 'Tab left >' })

-- Close all other buffers
vim.keymap.set('n', '<leader>o', '<cmd>:w|%bd|e#<CR>', { silent = true })

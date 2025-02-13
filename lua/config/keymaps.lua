vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Buffer left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Buffer down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Buffer up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Buffer right' })
vim.keymap.set('n', '<Leader>gg', function() require('snacks.lazygit').open() end, { desc = 'Toggle Lazygit' })
vim.keymap.set('n', '<Leader>e', function() require('snacks.explorer').open() end, { desc = 'Toggle explorer' })
vim.keymap.set('n', '<Leader>ff', function() require('snacks.picker').files() end, { desc = 'Find files' })
vim.keymap.set('n', '<Leader>fw', function() require('snacks.picker').grep() end, { desc = 'Find words' })
vim.keymap.set('n', '<Leader>t', function() require('snacks.terminal').toggle() end, { desc = 'Toggle terminal' })

vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', '<C-s>', ':w<CR>', { desc = 'Save' })

-- vim.keymap.set('t', 'jk', '<C-\\><C-n>')
-- vim.keymap.set('t', '<C-h>', 'jk<C-w>h', { desc = 'Buffer left' })
-- vim.keymap.set('t', '<C-j>', 'jk<C-w>j', { desc = 'Buffer down' })
-- vim.keymap.set('t', '<C-k>', 'jk<C-w>k', { desc = 'Buffer up' })
-- vim.keymap.set('t', '<C-l>', 'jk<C-w>l', { desc = 'Buffer right' })

vim.keymap.set('x', 'p', 'pgvy', { desc = 'Improved paste' });

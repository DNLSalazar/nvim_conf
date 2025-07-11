vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.cmd("set expandtab");
vim.cmd("set smarttab");
vim.cmd("set tabstop=2");
vim.cmd("set softtabstop=2");
vim.cmd("set shiftwidth=2");

vim.keymap.set('n', '<leader>tt', function()
  vim.cmd("set expandtab");
  vim.cmd("set smarttab");
  vim.cmd("set tabstop=2");
  vim.cmd("set softtabstop=2");
  vim.cmd("set shiftwidth=2");
end, { expr = true, silent = false, desc = "[T]ab reset" })

-- Setting options
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.wrap = false

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.scrolloff = 8

-- Linebreak
vim.o.linebreak = true
vim.o.breakat = " "
vim.o.wrap = false

vim.keymap.set('n', '<leader>l', function()
  vim.o.wrap = not vim.o.wrap
end, { expr = true, silent = true, desc = "[L]ine Wrap" })

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 50
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

vim.diagnostic.config { update_in_insert = true }
-- [[ Basic Keymaps

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.get_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.get_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Save all buffers and close all of them but the current one

vim.keymap.set('n', '<leader>BCA', ':wa|%bd|e#|bd#<CR>')

-- [[ Highlight on yank
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Quickfix keymaps

vim.keymap.set('n', '<C-n>', '<cmd>cnext<CR>', { desc = 'Quickfix list next' })
vim.keymap.set('n', '<C-p>', '<cmd>cprev<CR>', { desc = 'Quickfix list prev' })

-- Terminal Scape

vim.keymap.set('t', "<esc><esc>", "<c-\\><c-n>")

-- Live edditing
vim.opt.inccommand = "split"

-- Scape to noh

vim.keymap.set('n', '<leader>n', '<cmd>noh<CR>', { desc = 'Noh' })
vim.keymap.set("n", "<leader>b", "<cmd>Oil<CR>", { desc = "Oil file explorer" })

return {
  'rmagatti/auto-session',
  lazy = false,
  config = function()
    require("auto-session").setup {
    }

    vim.keymap.set('n', "<C-s>c", require("auto-session.session-lens").search_session, {
      noremap = true,
      desc = "Change Session"
    })
    vim.keymap.set('n', '<C-s>s', ':SessionSave<CR>', { desc = "Save Session" })
    vim.keymap.set('n', '<C-s>d', ':SessionDelete<CR>', { desc = "Delete Session" })
  end
}

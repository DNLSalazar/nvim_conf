-- return {
--   "EthanJWright/vs-tasks.nvim",
--   dependencies = {
--     "nvim-lua/popup.nvim",
--     "nvim-lua/plenary.nvim",
--     "nvim-telescope/telescope.nvim",
--     {
--       'Joakker/lua-json5',
--       -- run = './install.sh'
--       run = 'powershell ./install.ps1'
--     }
--   },
--   config = function()
--     require("vstask").setup({
--       json_parser = require('json5').parse
--     })
--     local telescope = require('telescope')
--     print(telescope.extensions.vstask.tasks())
--     -- vim.keymap.set('n', '<leader>st', telescope.extensions.vstask.tasks(), { desc = 'Search tasks' })
--   end
-- }
return {
  'stevearc/overseer.nvim',
  opts = {},
}

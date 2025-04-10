return {
  {
    "laytan/tailwind-sorter.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
    build = "cd formatter && npm ci && npm run build",
    keys = {
      { "<leader>ft", "<CMD>TailwindSort<CR>", desc = "Tailwind Sorter" },
    },
    config = function()
      require("tailwind-sorter").setup({
        on_save_enabled = false, -- If true, automatically enables on save sorting.
        on_save_pattern = {
          ".html",
          ".js",
          ".jsx",
          ".tsx",
          ".twig",
          ".hbs",
          ".php",
          ".heex",
          "*.astro",
        },                   -- The file patterns to watch and sort.
        node_path = "node",
        trim_spaces = false, -- If true, trim any extra spaces after sorting.
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    opts = {
      enable_close = true,           -- Auto close tags
      enable_rename = true,          -- Auto rename pairs of tags
      enable_close_on_slash = false, -- Auto close on trailing </
    },
  },
  {
    'barrett-ruth/live-server.nvim',
    build = 'pnpm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true
  }
}

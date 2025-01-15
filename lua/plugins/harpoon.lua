return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        vim.keymap.set("n", "<C-h>a", function() harpoon:list():add() end, { desc = "Harpoon append buffer" })
        vim.keymap.set("n", "<C-h>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
            { desc = "Harpoon list" })
        vim.keymap.set("n", "<C-h>d", function() harpoon:list():remove() end, { desc = "Harpoon delete buffer" })

        vim.keymap.set("n", "<C-h>h", function() harpoon:list():select(1) end, { desc = "Harpoon buffer 1" })
        vim.keymap.set("n", "<C-h>j", function() harpoon:list():select(2) end, { desc = "Harpoon buffer 2" })
        vim.keymap.set("n", "<C-h>k", function() harpoon:list():select(3) end, { desc = "Harpoon buffer 3" })
        vim.keymap.set("n", "<C-h>l", function() harpoon:list():select(4) end, { desc = "Harpoon buffer 4" })
        vim.keymap.set("n", "<C-h>p", function()
            harpoon:list():select(harpoon:list():length())
        end, { desc = "Harpoon last buffer" })

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<C-z>", function() harpoon:list():prev() end, { desc = "Harpoon Previous buffer" })
        vim.keymap.set("n", "<C-j>", function() harpoon:list():next() end, { desc = "Harpoon Next buffer" })
    end
}

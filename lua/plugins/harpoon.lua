return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    { "<leader>ha", function() require("harpoon"):list():add() end, desc = "Harpoon add"},
    { "<leader>he", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "Harpoon toggle quick menu"},
    { "<leader>hh", function() require("harpoon"):list():select(1) end, desc = "Harpoon item 1"},
    { "<leader>ht", function() require("harpoon"):list():select(1) end, desc = "Harpoon item 2"},
    { "<leader>hn", function() require("harpoon"):list():select(1) end, desc = "Harpoon item 3"},
    { "<leader>hs", function() require("harpoon"):list():select(1) end, desc = "Harpoon item 4"},
    { "<C-S-P>", function() require("harpoon"):list():prev() end, desc = "Harpoon previous item"},
    { "<C-S-N>", function() require("harpoon"):list():prev() end, desc = "Harpoon next item"},
  }
}

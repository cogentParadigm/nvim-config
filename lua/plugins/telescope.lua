return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {'<C-p>', function() require("telescope.builtin").find_files() end, desc="Telescope find files" },
      {'<leader>ff', function() require("telescope.builtin").find_files({hidden=true, no_ignore=true}) end, desc="Telescope find files (hidden)" },
      {'<leader>fg', function() require("telescope.builtin").live_grep() end, desc="Telescope live grep" },
      {'<leader>fb', function() require("telescope.builtin").buffers() end, desc="Telscope buffers"}
    }
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local sagabreadcrumbs = require('lspsaga.symbol.winbar')
    require('lualine').setup {
      options = {
        theme = 'horizon',
        disabled_filetypes = {
          'neo-tree'
        }
      },
      winbar = {
        lualine_a = {sagabreadcrumbs.get_bar}
      },
      extensions = {
        'neo-tree',
        'fugitive'
      }
    }
  end
}

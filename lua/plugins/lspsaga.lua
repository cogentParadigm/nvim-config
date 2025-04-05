return {
  'nvimdev/lspsaga.nvim',
  event = 'LspAttach',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    local util = require('lspsaga.util')
    util.path_itera = function(buf)
      local path = vim.api.nvim_buf_get_name(buf)
      local root = vim.fn.getcwd()
      local relative = string.sub(path, string.len(root) + 2)
      local parts = vim.split(relative, util.path_sep, { trimempty = true })
      local index = #parts + 1
      return function()
        index = index - 1
        if index > 0 then
          return parts[index]
        end
      end
    end
    require('lspsaga').setup({
      symbol_in_winbar = {
        enable = false,
        folder_level = 5
      }
    })
  end
}

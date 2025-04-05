return {
  'lewis6991/gitsigns.nvim',
  opts = {
    on_attach = function()
      vim.wo.signcolumn = "yes:4"
    end
  }
}

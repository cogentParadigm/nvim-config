return {
  "lewis6991/hover.nvim",
  init = function()
    require("hover.providers.lsp")
    require("hover.providers.jira")
    require("hover.providers.dap")
    require("hover.providers.fold_preview")
    require("hover.providers.diagnostic")
    -- Mouse support
    vim.keymap.set('n', '<MouseMove>', require('hover').hover_mouse, { desc = "hover.nvim (mouse)" })
    vim.o.mousemoveevent = true
  end,
  opts = {
    title = true,
    mouse_providers = {
      'LSP'
    },
    mouse_delay = 500
  }
}

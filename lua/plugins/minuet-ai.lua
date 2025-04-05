return {
  'milanglacier/minuet-ai.nvim',
  config = function()
    --local vectorcode_cacher = require("vectorcode.cacher")
    --local current_row = vim.api.nvim_win_get_cursor(vim.api.nvim_get_current_win())[1]
    --local nearLines = vim.api.nvim_buf_get_lines(vim.api.nvim_get_current_buf(), current_row - 5, current_row + 5, false)
    require('minuet').setup {
      n_completions = 1,
      request_timeout = 5,
      provider = 'codestral',
      virtualtext = {
        auto_trigger_ft = { 'lua', 'php', 'python', 'javascript' },
        keymap = {
          -- accept whole completion
          accept = '<A-A>',
          -- accept one line
          accept_line = '<A-a>',
          -- accept n lines (prompts for number)
          -- e.g. "A-z 2 CR" will accept 2 lines
          accept_n_lines = '<A-z>',
          -- Cycle to prev completion item, or manually invoke completion
          prev = '<A-[>',
          -- Cycle to next completion item, or manually invoke completion
          next = '<A-]>',
          dismiss = '<A-e>',
        },
      },
      provider_options = {
        codestral = {
          optional = {
            max_tokens = 256,
            stop = { '\n\n' }
          }
        }
      }
    }
  end,
}

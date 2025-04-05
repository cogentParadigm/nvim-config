return {
  'rmagatti/auto-session',
  lazy = false,

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/public_html', '~/Downloads', '/' },
    close_unsupported_windows = true,
    pre_save_cmds = { 'Neotree close' },
    post_restore_cmds = { 'Neotree' }
  }
}

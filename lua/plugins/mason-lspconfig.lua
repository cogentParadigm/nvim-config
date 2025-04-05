return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {'lua_ls', 'phpactor', 'jedi_language_server', 'ts_ls'},
    handlers = {
      function(server_name)
        require('lspconfig')[server_name].setup({})
      end
    }
  }
}

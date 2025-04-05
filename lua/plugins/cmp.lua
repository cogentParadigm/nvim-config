return {
  'hrsh7th/nvim-cmp',
  opts = function()
    local cmp = require('cmp')
    return {
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'nvim_lsp_signature_help' },
        { name = "codecompanion" }
      }),
      mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = false}),
      }),
      preselect = 'item',
      completion = {
        completeopt = 'menu,menuone,noinsert'
      }
    }
  end
}

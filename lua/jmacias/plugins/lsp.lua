return {
   'VonHeikemen/lsp-zero.nvim',
   branch = 'v2.x',
   event = "InsertEnter",
   dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      build = ':MasonUpdate',
      cmd = 'Mason',
   },
   {'williamboman/mason-lspconfig.nvim'}, -- Optional
   -- Autocompletion
   {'hrsh7th/nvim-cmp'},     -- Required
   {'hrsh7th/cmp-nvim-lsp'}, -- Required
   { 'L3MON4D3/LuaSnip'},
   {'hrsh7th/cmp-path'},
   {'hrsh7th/cmp-buffer'},
   {'saadparwaiz1/cmp_luasnip'},
   {'rafamadriz/friendly-snippets'},
},
build = ":LspStart",
config = function()
   local lsp = require('lsp-zero').preset({})
   lsp.on_attach(function(client, bufnr)
      lsp.default_keymaps({buffer = bufnr})
   end)
   lsp.set_sign_icons({
      error = '✘',
      warn = '▲',
      hint = '⚑',
      info = '»'
   })
   lsp.setup()
   local cmp = require('cmp')
   local cmp_action = require('lsp-zero').cmp_action()
   require('luasnip.loaders.from_vscode').lazy_load()
   cmp.setup({
      sources = {
         {name = 'path'},
         {name = 'nvim_lsp'},
         {name = 'buffer', keyword_length = 3},
         {name = 'luasnip', keyword_length = 2},
      },
      mapping = {
         ['<Tab>'] = cmp_action.luasnip_jump_forward(),
         ['<S-Tab>'] = cmp_action.luasnip_jump_backward(),
         ['<CR>'] = cmp.mapping.confirm({select = true}),
      }
   })
end,
}

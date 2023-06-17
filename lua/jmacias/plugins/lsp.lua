return {
   'VonHeikemen/lsp-zero.nvim',
   branch = 'v2.x',
   dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      build = ':MasonUpdate',
   },
   {'williamboman/mason-lspconfig.nvim'}, -- Optional

   -- Autocompletion
   {'hrsh7th/nvim-cmp'},     -- Required
   {'hrsh7th/cmp-nvim-lsp'}, -- Required
   { 'L3MON4D3/LuaSnip'},
},
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

   -- (Optional) Configure lua language server for neovim
   require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
   require('luasnip.loaders.from_vscode').lazy_load()
   lsp.setup()
end
}

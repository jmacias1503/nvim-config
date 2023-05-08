return {
   'vimwiki/vimwiki',
   init = function ()
      vim.g.vimwiki_list = {{path = '~/Documents/Second Brain', syntax = 'markdown', ext = '.md'}}
      vim.g.vimwiki_global_ext = 0
   end,
   ft = "markdown",
   keys = {{"<leader>ww"}, {"<leader>wi"}},
}

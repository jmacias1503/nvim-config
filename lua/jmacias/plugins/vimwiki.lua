return {
   'vimwiki/vimwiki',
   init = function ()
      vim.g.vimwiki_list = {{path = '~/Docs/Second Brain', syntax = 'markdown', ext = '.md'}}
      vim.g.vimwiki_global_ext = 0
   end,
   ft = "markdown",
   keys = {"<leader>ww"},
}

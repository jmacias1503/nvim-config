return {
   'vimwiki/vimwiki',
   init = function ()
      vim.g.vimwiki_list = {{path = '~/Documents/Second Brain/Notas', syntax = 'markdown', ext = '.md'}}
      vim.g.vimwiki_global_ext = 0
      vim.g.vimwiki_listsyms = ' ○◐●x'
      vim.g.vimwiki_diary_rel_path = ''
      vim.opt.spell = true
      vim.opt.spelllang = 'es_mx'
   end,
   ft = "markdown",
   keys = {{"<leader>ww"}, {"<leader>wi"}},
}

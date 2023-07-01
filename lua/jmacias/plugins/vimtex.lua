return {
   'lervag/vimtex',
   init = function ()
      vim.g.vimtex_view_method = 'zathura'
      vim.o.maplocalleader = " "
      vim.opt.spell = true
      vim.opt.spelllang = 'es_mx'
   end,
   ft = "tex",
}

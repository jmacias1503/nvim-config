return {
   'lervag/vimtex',
   init = function ()
      vim.g.vimtex_view_method = 'zathura'
      vim.o.maplocalleader = " "
   end,
   ft = "tex",
}

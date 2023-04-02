return {
   'preservim/nerdtree',
   dependencies = {
      'ryanoasis/vim-devicons',
   },
   config = function ()
      vim.keymap.set("n", "<leader>ef",  vim.cmd.NERDTreeToggle)
   end,
}

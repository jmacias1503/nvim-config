return {

   dependencies = {
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'nvim-telescope/telescope-dap.nvim',
      'rcarriga/cmp-dap',
      'anuvyklack/hydra.nvim',
   },
   'mfussenegger/nvim-dap',
   config = function ()
      vim.keymap.set("n", "<leader>bp", vim.cmd.DapToggleBreakpoint)
   end,
}

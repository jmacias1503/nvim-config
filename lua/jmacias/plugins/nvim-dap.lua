return {

   dependencies = {
      'rcarriga/nvim-dap-ui',
   },
   'mfussenegger/nvim-dap',
   config = function ()
      vim.keymap.set("n", "<leader>bp", vim.cmd.DapToggleBreakpoint)
   end,
}

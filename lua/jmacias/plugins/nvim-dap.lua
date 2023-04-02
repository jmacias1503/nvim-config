return {
   'mfussenegger/nvim-dap',
   config = function ()
      vim.keymap.set("n", "<leader>bp", vim.cmd.DapToggleBreakpoint)
   end,
}

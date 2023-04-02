return {
   "rcarriga/nvim-dap-ui",
   dependencies = {
      "folke/neodev.nvim",
      "mfussenegger/nvim-dap",
   },
   config = function ()
      require("dapui").setup()
      function Toggle_ui()
         require('dapui').toggle()
      end

      vim.keymap.set('n', '<leader>dp', ':lua require("dapui").toggle()')
   end
}

return {
   'mfussenegger/nvim-dap',
   dependencies = {
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'nvim-telescope/telescope-dap.nvim',
      'rcarriga/cmp-dap',
      'anuvyklack/hydra.nvim',
   },

   config = function ()
      require "jmacias.dap"
      local ok_telescope, telescope =pcall(require, "telescope")
      if ok_telescope then
         telescope.load_extension "dap"
      end

    local ok_cmp, cmp = pcall(require, "cmp")
    if ok_cmp then
      cmp.setup.filetype({ "dap-repl", "dapui_watches" }, {
        sources = cmp.config.sources({
          { name = "dap" },
        }, {
          { name = "buffer" },
        }),
      })
    end
   end,
}

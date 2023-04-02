return {
  "folke/trouble.nvim",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
    vim.keymap.set("n", "<leader>tt", vim.cmd.TroubleToggle)
  end,
  dependencies = "nvim-tree/nvim-web-devicons",
  keys = {{"<leader>tt"}}
}

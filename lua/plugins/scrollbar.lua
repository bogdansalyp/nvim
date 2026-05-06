return {
  "petertriho/nvim-scrollbar",
  event = "VeryLazy",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "kevinhwang91/nvim-hlslens",
  },
  config = function()
    require("scrollbar").setup()
    require("scrollbar.handlers.gits").setup()
    require("scrollbar.handlers.search").setup()
  end,
}

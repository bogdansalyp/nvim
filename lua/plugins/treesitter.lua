return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "lua", "python", "javascript", "typescript" },
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}

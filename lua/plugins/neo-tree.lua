return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false, -- neo-tree will lazily load itself
  config = function()
    require("neo-tree").setup({
      enable_git_status = true,
      enable_diagnostics = true,
      window = {
        position = "float",
        width = 10
      },
      filesystem = {
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = true
        }
      }
    })
    vim.keymap.set('n', '<C-b>', ':Neotree float toggle<CR>')
  end
}

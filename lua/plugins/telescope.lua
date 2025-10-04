return {
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
      require("telescope").setup({
        defaults = {
          hidden = true,
          no_ignore = false,
          file_ignore_patterns = { ".git/" },
        },
        pickers = {
          find_files = {
            hidden = true,
            no_ignore = false,
            file_ignore_patterns = { ".git/" },
          },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<space>o', builtin.find_files)
      vim.keymap.set('n', '<space>g', builtin.live_grep)
      vim.keymap.set("n", "<space>fr", builtin.oldfiles, { noremap = true, silent = true })
    end
  }
}

return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()
    vim.keymap.set('n', ']h', ':Gitsigns next_hunk<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '[h', ':Gitsigns prev_hunk<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<space>hp', ':Gitsigns preview_hunk<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<space>hr', ':Gitsigns reset_hunk<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<space>hb', ':Gitsigns blame_line<CR>', { noremap = true, silent = true })
  end
}

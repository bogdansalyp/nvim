return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  config = function()
    require("claudecode").setup({
      terminal = {
        git_repo_cwd = true,
      },
    })
    vim.keymap.set('n', '<leader>ac', ':ClaudeCode<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>af', ':ClaudeCodeFocus<CR>', { noremap = true, silent = true })
    vim.keymap.set('v', '<leader>as', ':ClaudeCodeSend<CR>', { noremap = true, silent = true })
  end
}

vim.lsp.enable({ 'lua_ls', 'go_ls', 'bash_ls', 'ruff_ls' })

vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
      border = "rounded",
      source = "always",
  },
})


vim.lsp.enable({ 'lua_ls', 'gopls' })

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


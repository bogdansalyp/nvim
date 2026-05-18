vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- showing whitespaces
vim.cmd("set list")
vim.cmd("set listchars+=trail:·")

vim.keymap.set('i', 'df', '<Esc>', { noremap = true })

vim.wo.signcolumn = "yes"
vim.o.number = true
vim.o.smartindent = true
vim.o.clipboard = "unnamedplus"
vim.o.undofile = true
vim.o.mousescroll = "ver:1,hor:1"

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI", "TermLeave" }, {
  pattern = "*",
  command = "if mode() !~ '\\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif",
})

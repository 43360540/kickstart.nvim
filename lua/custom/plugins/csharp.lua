-- C# Roslyn LSP
vim.pack.add { 'https://github.com/seblj/roslyn.nvim' }
require('roslyn').setup {
  extensions = {
    razor = {
      enabled = false,
      config = {},
    },
  },
}

-- Enable on-type formatting for all lsp
vim.lsp.on_type_formatting.enable()

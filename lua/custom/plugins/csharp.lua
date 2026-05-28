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

-- LSP settings via nvim native API
vim.lsp.config('roslyn', {
  settings = {
    ['csharp|background_analysis'] = {
      dotnet_analyzer_diagnostics_scope = 'fullSolution',
      dotnet_compiler_diagnostics_scope = 'fullSolution',
    },
  },
})
-- Enable on-type formatting for all lsp
vim.lsp.on_type_formatting.enable()

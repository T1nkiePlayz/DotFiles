return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  config = function()
    require('orgmode').setup({
      org_agenda_files = '/storage/Projects/Org/**/*',
      org_default_notes_file = '/storage/Projects/Org/Refile.org',
    })
   -- Experimental LSP support
   vim.lsp.enable('org')
  end,
}

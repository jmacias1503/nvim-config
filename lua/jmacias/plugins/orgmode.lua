return {
	'nvim-orgmode/orgmode',
   dependencies = {
      'akinsho/org-bullets.nvim',
   },
	config = function()
		require('orgmode').setup_ts_grammar{}
		require('orgmode').setup{
			org_agenda_files = {'/home/jmacias8075/Documents/Second Brain/Notas/*'},
			org_default_notes_file = '~/Documents/Second Brain/Notas/default.org',
         org_archive_location = '/home/jmacias8075/Documents/Second Brain/Notas/archive.org',
		}
	end,
   ft = {"org", "markdown"},
   keys = { {"<leader>oa"}, {"<leader>oc"} },
}

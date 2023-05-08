return {
	'nvim-orgmode/orgmode',
   dependencies = {
      'akinsho/org-bullets.nvim',
   },
	config = function()
		require('orgmode').setup_ts_grammar{}
		require('orgmode').setup{
			org_agenda_files = {'/home/jmacias8075/Documents/Second Brain/org/*'},
			org_default_notes_file = '~/Documents/Second Brain/org/default.org',
         org_archive_location = '/home/jmacias8075/Documents/Second Brain/org/archive.org',
		}
	end,
   ft = "org",
   keys = { {"<leader>oa"}, {"<leader>oc"} },
}

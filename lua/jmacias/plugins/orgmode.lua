return {
	'nvim-orgmode/orgmode',
   dependencies = {
      'akinsho/org-bullets.nvim',
   },
	config = function()
		require('orgmode').setup_ts_grammar{}
		require('orgmode').setup{
			org_agenda_files = {'/home/jmacias8075/Docs/Second Brain/org/*'},
			org_default_notes_file = '~/Docs/Second Brain/org/default.org',
		}
	end,
   ft = "org",
   keys = {"<leader>oa"},
}

local builtin = require('telescope.builtin')
require('telescope').setup{
	defaults = {
	  vimgrep_arguments = {
		'rg',
		'--color=never',
		'--no-heading',
		'--with-filename',
		'--line-number',
		'--column',
		'--smart-case',
		'-uu' -- **This is the setting not being respected**
	  }
	}
  }

vim.keymap.set('n', '<leader>pf', function() builtin.find_files( {hidden=true} ) end, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > "), hidden = true });
end)

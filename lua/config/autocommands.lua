-- turn off comments continuing when placing them
vim.api.nvim_create_autocmd("FileType", {
	-- target all files
	pattern = "*",
	-- remove the autocommenting feature
	callback = function()
		vim.opt_local.formatoptions:remove({ "r", "o" })
	end,
})

-- Make html file tabs 2 instead of 4
vim.api.nvim_create_autocmd("FileType", {
	pattern = "html",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
	end,
})

-- In Ruby, methods chained with "." before "end" autoindent wrong as described
-- here: https://github.com/tree-sitter/tree-sitter-ruby/issues/230 This is not
-- a bug within treesitter so to get expected behavior we have to tweak
-- indenting a bit.
vim.api.nvim_create_autocmd("FileType", {
	pattern = "ruby",
	callback = function()
		vim.opt_local.indentkeys:remove(".")
	end,
})

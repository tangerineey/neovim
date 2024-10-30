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

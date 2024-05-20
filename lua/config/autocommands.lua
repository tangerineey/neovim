-- turn off comments continuing when placing them
vim.api.nvim_create_autocmd("FileType", {
	-- target all files
	pattern = "*",
	-- remove the autocommenting feature
	callback = function()
		vim.opt_local.formatoptions:remove({ "r", "o" })
	end,
})

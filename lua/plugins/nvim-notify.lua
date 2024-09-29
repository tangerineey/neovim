return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		notify.setup({
			-- Needed for transparency
			background_colour = "#000000",
		})
		vim.notify = notify
	end,
}

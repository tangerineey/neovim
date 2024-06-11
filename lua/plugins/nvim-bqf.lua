return {
	"kevinhwang91/nvim-bqf",
	ft = "qf",
	config = function()
		require("bqf").setup({
			-- To fix transparency for preview window
			preview = {
				winblend = 0,
			},
		})
	end,
}

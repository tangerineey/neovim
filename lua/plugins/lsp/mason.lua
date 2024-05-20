return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- import the mason tool installer
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- setup lsps
		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls", -- lsp for lua
				"pyright", -- lsp for python
				"clangd", -- lsp for C
			},
		})

		-- setup formatters
		mason_tool_installer.setup({
			-- list of formatters/linters for mason to install
			ensure_installed = {
				"stylua", -- formatter for lua
				"isort", -- formatter for python
				"black", -- formatter for python
				"mypy", -- linter for python
			},
		})
	end,
}

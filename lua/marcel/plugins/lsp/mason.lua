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

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"css_variables",
				"tailwindcss",
				"lua_ls",
				"graphql",
				"pyright",
				"ltex",
				"texlab",
				"pyre",
				"vuels",
				"lemminx",
				"yamlls",
				"clangd",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua", -- Lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint", -- python formatter
				"eslint_d", --js linter
			},
		})
	end,
}

return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		explorer = { enabled = true, replace_netrw = true },
		image = { enabled = false },
		indent = { enabled = true, animate = { enabled = false } },
		input = { enabled = true },
		lazygit = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
	keys = {
		{ "gd", function() Snacks.picker.lsp_definitions() end,      desc = "Goto Definition" },
		{ "gD", function() Snacks.picker.lsp_declarations() end,     desc = "Goto Declaration" },
		{ "gr", function() Snacks.picker.lsp_references() end,       nowait = true,                  desc = "References" },
		{ "gi", function() Snacks.picker.lsp_implementations() end,  desc = "Goto Implementation" },
		{ "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
	}
}

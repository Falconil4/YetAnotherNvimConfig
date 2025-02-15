return {
	{
		'akinsho/bufferline.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require('bufferline').setup()
		end,
	},
	{
		'marko-cerovac/material.nvim',
		config = function()
			require('material').setup({
				plugins = {
					"flash",
					"nvim-cmp",
					"mini",
					"which-key",
				}
			})
		end
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{ "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
		},
	},
	{
		'nvim-treesitter/nvim-treesitter',
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		'windwp/nvim-ts-autotag',
		lazy = false,
		config = function()
			require('nvim-ts-autotag').setup()
		end,
	},
}

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
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>tt",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>tb",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = { 'lua', 'json', 'html', 'css', 'scss', 'javascript', 'typescript', 'vue', 'angular', 'c_sharp' }
			})
		end
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
	{
		'folke/ts-comments.nvim',
		event = "VeryLazy",
		opts = {},
	},
	{
		'xiyaowong/transparent.nvim',
		lazy = false,
		config = function()
			require('transparent').setup({
				extra_groups = { 'NormalFloat' }
			})
			require('transparent').clear_prefix('BufferLine')
		end
	},
	{
		"sbdchd/neoformat",
		lazy = false
	}
}

return {
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function() require('lsp_signature').setup() end,
	},
	{
		'williamboman/mason.nvim',
		config = function() require('mason').setup({}) end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require('mason-lspconfig').setup({
				ensure_installed = { 'lua_ls', 'omnisharp', 'volar', 'ts_ls', 'html', 'cssls' },
			})

			local lspconfig = require('lspconfig')

			lspconfig.omnisharp.setup({
				handlers = {
					["textDocument/codeLens"] = function(_, _, params, client_id, bufnr, _)
						vim.lsp.handlers["textDocument/codeLens"](_, _, params, client_id, bufnr)
					end
				},
				settings = {
					RoslynExtensionsOptions = {
						EnableAnalyzersSupport = true,
						EnableImportCompletion = true,
						AnalyzeOpenDocumentsOnly = true,
					}
				}
			})

			lspconfig.ts_ls.setup {
				init_options = {
					plugins = {
						{
							name = '@vue/typescript-plugin',
							location = vim.fn.expand("$MASON/packages/vue-language-server"),
							languages = { 'vue' },
						},
					},
				},
				filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
			}

			local defaultConfigServers = { "lua_ls", "volar", 'html', 'cssls', 'angularls' }
			for _, lsp in ipairs(defaultConfigServers) do
				lspconfig[lsp].setup({})
			end
		end,
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			local lspconfig_defaults = require('lspconfig').util.default_config
			lspconfig_defaults.capabilities = vim.tbl_deep_extend(
				'force',
				lspconfig_defaults.capabilities,
				require('cmp_nvim_lsp').default_capabilities()
			)

			vim.api.nvim_create_autocmd('LspAttach', {
				desc = 'LSP actions',
				callback = function(event)
					local opts = { buffer = event.buf }

					vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
					vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
					vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
					vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
					vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
					vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
					vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
					vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
					vim.keymap.set({ 'n', 'x' }, '<F3>',
						'<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
					vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
				end,
			})
		end,
	},
	{
		'hrsh7th/cmp-nvim-lsp',
	},
	{
		'hrsh7th/nvim-cmp',
		config = function()
			local cmp = require('cmp')

			cmp.setup({
				sources = {
					{ name = 'nvim_lsp' },
					{ name = 'path' },
				},
				snippet = {
					expand = function(args)
						vim.snippet.expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-j>'] = cmp.mapping.select_next_item(),
					['<C-k>'] = cmp.mapping.select_prev_item(),
					['<CR>'] = cmp.mapping.confirm({ select = true }),
					['<Tab>'] = cmp.mapping.confirm({ select = true }),

				}),
				completion = {
					completeopt = 'menu,menuone,noinsert'
				},
			})
		end

	},
	{
		'nvimdev/lspsaga.nvim',
		config = function()
			require('lspsaga').setup({
				lightbulb = { enable = false }
			})
		end,
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
			'nvim-tree/nvim-web-devicons',
		}
	},
}

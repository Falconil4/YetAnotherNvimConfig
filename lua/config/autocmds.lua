vim.api.nvim_create_autocmd("BufWritePre",
	{
		pattern = "*",
		callback = function() vim.lsp.buf.format() end,
	}
)

vim.api.nvim_create_autocmd({ "LspAttach", "InsertLeave" },
	{
		pattern = "*",
		callback = function() vim.lsp.codelens.refresh() end,
	}
)

vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank { higroup = "Visual", timeout = 300 }
	end,
})

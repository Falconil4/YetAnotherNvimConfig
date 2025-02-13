return {
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
}

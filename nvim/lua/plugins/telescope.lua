return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			Builtin_Telescope = require("telescope.builtin")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
                defaults = {
                    file_ignore_patterns = {
                        '.*.keras',
                        'pythonclient/.*',
                        '__pycache__/.*',
                        'venv/.*',
                    }
                },
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}

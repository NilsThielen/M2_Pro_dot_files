return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
--				null_ls.builtins.code_actions.refactoring,
--				null_ls.builtins.diagnostics.flake8,
--				null_ls.builtins.diagnostics.pyproject_flake8,
			},
		})
	end,
}
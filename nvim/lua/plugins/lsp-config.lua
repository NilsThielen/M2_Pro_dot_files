return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { 'lua_ls', 'pylsp'}
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
        lazy = false,
		config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.gdscript.setup({
                capabilities = capabilities
            })
			lspconfig.pylsp.setup({
                capabilities = capabilities,
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = {
                                ignore = {
                                    'W605',
                                    'E203',
                                    'E701',
                                    'W504'
                                },
                                maxLineLength = 100
                            }
                        }
                    }
                }
            })

            vim.diagnostic.config({
                signs = false,
            })
		end,
	},
}

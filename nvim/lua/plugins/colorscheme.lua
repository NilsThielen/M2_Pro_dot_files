return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = function()
		return {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		}
	end,
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}

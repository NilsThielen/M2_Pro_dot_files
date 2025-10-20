return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				visible = true,
                auto_close = true
			},
		},
        event_handlers = {
            {
                event = "file_open_requested",
                handler = function()
                    require("neo-tree.command").execute({action = "close"})
                end
            }

        }
	},
}

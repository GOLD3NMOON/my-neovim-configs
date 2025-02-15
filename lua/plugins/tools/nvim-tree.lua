return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			view = {
				width = 45,
                float = {
                    enable = true,
                    open_win_config = function()
                        local screen_height = vim.opt.lines:get() - vim.opt.cmdheight:get()
                        return {
                            border = "rounded",
                            style = "minimal",
                            relative = "editor",
                            row = 1,
                            col = 1,
                            width = 45,
                            height = screen_height
                        }
                    end
                }
			},
			renderer = {
				root_folder_label = false,
				root_folder_modifier = ":t",
				indent_markers = {
					enable = true,
					icons = {
						corner = "└",
						edge = "│",
						item = "│",
						bottom = "─",
						none = " ",
					},
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "+",
							arrow_open = "-",
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
						},
						git = {
							unstaged = "",
							staged = "",
							unmerged = "",
							renamed = "󰏫",
							untracked = "◌",
							deleted = "",
							ignored = "󰘓",
						},
					},
					padding = " ",
				},
			},
		},
	},
}

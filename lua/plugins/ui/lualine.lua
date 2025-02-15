return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = {
						normal = {
							a = { fg = "#ffffff", bg = "NONE", gui = "bold" },
							b = { fg = "#ffffff", bg = "NONE" },
							c = { fg = "#ffffff", bg = "NONE" },
						},
						insert = { a = { fg = "#ffffff", bg = "NONE", gui = "bold" } },
						visual = { a = { fg = "#ffffff", bg = "NONE", gui = "bold" } },
						replace = { a = { fg = "#ffffff", bg = "NONE", gui = "bold" } },
						command = { a = { fg = "#ffffff", bg = "NONE", gui = "bold" } },
					},
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = { "NvimTree" },
				},
			})
		end,
	},
}


return {

	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({
				size = 22,
				open_mapping = [[<c-j>]],
				hide_numbers = true,
				shade_filetypes = {},
				shade_terminals = true,
				terminal_mappings = true,
				persist_size = true,
				direction = "float",
				float_opts = {
					border = "curved",
					winblend = 3,
				},
			})
		end,
	},
}

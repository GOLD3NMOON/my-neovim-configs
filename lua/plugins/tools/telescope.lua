return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					projects = {},
				},
			})
			-- require("telescope").load_extension("projects")
		end,
	},
}

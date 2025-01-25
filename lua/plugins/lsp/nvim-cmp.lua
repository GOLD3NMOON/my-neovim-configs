return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"L3MON4D3/LuaSnip",
			"onsails/lspkind.nvim",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		opts = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			local lspkind = require("lspkind")

			local cmp_kinds = {
				Text = "",
				Method = "",
				Function = "",
				Constructor = "",
				Field = "",
				Variable = "",
				Class = "",
				Interface = "",
				Module = "",
				Property = "",
				Unit = "",
				Value = "",
				Enum = "",
				Keyword = "",
				Snippet = "",
				Color = "",
				File = "",
				Reference = "",
				Folder = "",
				EnumMember = "",
				Constant = "",
				Struct = "",
				Event = "",
				Operator = "",
				TypeParameter = "",
			}

			return {
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{
						name = "buffer",
						option = {
							keyword_length = 5,
							get_bufnrs = function()
								return vim.tbl_filter(function(buf)
									return vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].filetype == vim.bo.filetype
								end, vim.api.nvim_list_bufs())
							end,
						},
					},
					{ name = "path" },
				}),
				window = {
					completion = {
						col_offset = -3,
						side_padding = 0,
						scrollbar = false,
						border = "rounded",
						winhighlight = "Normal:CmpDoc,FloatBorder:CmpDoc,Search:None",
					},
					documentation = {
						border = "rounded",
						winhighlight = "Normal:CmpDoc,FloatBorder:CmpDoc,Search:None",
						max_width = 80,
						max_height = 12,
					},
				},
				formatting = {
					fields = { "kind", "abbr", "menu" },
					format = function(_, vim_item)
						local fmt = lspkind.cmp_format({
							mode = "symbol_text",
							maxwidth = 50,
							ellipsis_char = "...",
						})(_, vim_item)

						local strings = vim.split(fmt.kind, "%s", { trimempty = true })
						fmt.kind = " " .. (cmp_kinds[strings[2]] or strings[1])
						fmt.menu = strings[2] ~= nil and ("  " .. (strings[2] or "")) or ""

						return fmt
					end,
				},
			}
		end,
	},
}

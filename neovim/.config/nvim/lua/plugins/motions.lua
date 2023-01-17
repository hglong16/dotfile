return {
	-- betters escape
	{
		"max397574/better-escape.nvim",
		lazy = false,
		config = function()
			require("better_escape").setup()
		end,
	},
	-- targets
	{

		"echasnovski/mini.ai",
		event = "User ActuallyEditing",
		config = function()
			require("mini.ai").setup()
		end,
	},

	-- leap
	{
		"ggandor/leap.nvim",
		event = "VeryLazy",
		dependencies = { { "ggandor/flit.nvim", opts = { labeled_modes = "nv" } } },
		config = function(_, opts)
			local leap = require("leap")
			for k, v in pairs(opts) do
				leap.opts[k] = v
			end
			leap.add_default_mappings(true)
		end,
	},

	-- mini move
	{

		"echasnovski/mini.move",
		event = "User ActuallyEditing",
		config = function()
			require("mini.move").setup()
		end,
	},

	-- surround
	{
		"kylechui/nvim-surround",
		event = "User ActuallyEditing",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	-- iluminate
	{
		"RRethy/vim-illuminate",
		event = "BufReadPost",
		opts = { delay = 200 },
		config = function(_, opts)
			require("illuminate").configure(opts)
		end,
    -- stylua: ignore
    keys = {
      { "]]", function() require("illuminate").goto_next_reference(false) end, desc = "Next Reference", },
      { "[[", function() require("illuminate").goto_prev_reference(false) end, desc = "Prev Reference" },
    },
	},
}

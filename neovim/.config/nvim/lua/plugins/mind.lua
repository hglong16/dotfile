return {
	"phaazon/mind.nvim",
	branch = "v2.2",
	cmd = "Mind",
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
		require("mind").setup({

			persistence = {
				state_path = "~/Desktop/MindNote/mind.json",
				data_dir = "~/Desktop/MindNote/",
			},
		})
	end,
}

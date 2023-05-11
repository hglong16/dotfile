return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  {
    "numToStr/Navigator.nvim",
    config = function()
      require("Navigator").setup()
    end,
  },
  {
    "xiyaowong/transparent.nvim",
  },
}

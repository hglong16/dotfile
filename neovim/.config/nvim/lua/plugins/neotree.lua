return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    init = function()
      vim.g.neo_tree_remove_legacy_commands = true
    end,
    cmd = 'Neotree',
    keys = {
      {"<leader>e", "<cmd>Neotree toggle<Cr>", desc = "Toggle Neotree", remap = true},
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
  },

  {      'kyazdani42/nvim-web-devicons' }
}

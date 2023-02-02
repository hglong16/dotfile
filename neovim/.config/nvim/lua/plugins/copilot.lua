return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.keymap.set("i", "<C-j>", 'copilot#Accept("")', { silent = true, expr = true, desc = "Copilot dummy accept" })
  end,
}

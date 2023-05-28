local keymap = vim.keymap

keymap.set("n", "x", '"_x')

keymap.set("n", "dw", 'vb"_d')

keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")

keymap.set("", "<C-h>", "<C-w>h")
keymap.set("", "<C-j>", "<C-w>j")
keymap.set("", "<C-k>", "<C-w>k")
keymap.set("", "<C-l>", "<C-w>l")

keymap.set("", "<C-w><left>", "<C-w><")
keymap.set("", "<C-w><right>", "<C-w>>")
keymap.set("", "<C-w><up>", "<C-w>+")
keymap.set("", "<C-w><down>", "<C-w>-")

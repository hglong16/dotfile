-- hglong16 ZONE

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    '--single-branch',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  }
end

vim.opt.runtimepath:prepend(lazypath)

require('lazy').setup({
  spec = {
    { import = "plugins" },

  },
  defaults = { lazy = true },
  performance = {
    rtp = {
    },
  },
})

require 'impatient'

vim.notify = function(_, m, l, o)
  local notify = require 'notify'
  vim.notify = notify
  notify(_, m, l, o)
end

require 'config.options'
require 'config.autocmds'
require 'config.keymaps'

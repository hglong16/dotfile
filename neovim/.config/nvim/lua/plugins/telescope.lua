 return {
   {'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'telescope-fzf-native.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
    },
    init = function()
      local map = vim.api.nvim_set_keymap

      local silent = { silent = true, noremap = true }
      -- Navigate buffers and repos
      map('n', '<leader>fc', [[<cmd>Telescope commands theme=get_dropdown<cr>]], silent)
      map('n', '<leader>fb', [[<cmd>Telescope buffers show_all_buffers=true theme=get_dropdown<cr>]], silent)
      map('n', '<leader>fg', [[<cmd>Telescope git_files theme=get_dropdown<cr>]], silent)
      map('n', '<leader>ff', [[<cmd>Telescope find_files theme=get_dropdown<cr>]], silent)
      map('n', '<leader>fw', [[<cmd>Telescope live_grep theme=get_dropdown<cr>]], silent)
      map('n', '<leader>fp', [[<cmd>Telescope file_browser theme=get_dropdown<cr>]], silent)
    end,
    config = function()
      local telescope = require 'telescope'
      local fb_actions = telescope.extensions.file_browser.actions
      telescope.setup {
        defaults = {
          layout_strategy = 'flex',
          layout_config = { anchor = 'N' },
          scroll_strategy = 'cycle',
          theme = require('telescope.themes').get_dropdown { layout_config = { prompt_position = 'top' } },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
          },
          ['ui-select'] = {
            require('telescope.themes').get_dropdown { layout_config = { prompt_position = 'top' } },
          },
          heading = { treesitter = true },
          file_browser = {
            hijack_netwrw = true,
            hidden = true,
            mappings = {
              i = {
                ['<c-n>'] = fb_actions.create,
                ['<c-r>'] = fb_actions.rename,
                ['<c-h>'] = fb_actions.toggle_hidden,
                ['<c-x>'] = fb_actions.remove,
                ['<c-p>'] = fb_actions.move,
                ['<c-y>'] = fb_actions.copy,
                ['<c-a>'] = fb_actions.select_all,
              },
            },
          },
        },
        pickers = {
          buffers = {
            ignore_current_buffer = true,
            -- sort_mru = true,
            sort_lastused = true,
            previewer = false,
          },
        },
      }

      -- Extensions
      telescope.load_extension 'fzf'
      telescope.load_extension 'ui-select'
      telescope.load_extension 'notify'
      telescope.load_extension 'heading'
      telescope.load_extension 'file_browser'
    end,
    cmd = 'Telescope',
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
  'crispgm/telescope-heading.nvim',
  'nvim-telescope/telescope-file-browser.nvim',
  }

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon'):setup {}
  end,
  keys = {
    {
      '<leader>pa',
      function()
        require('harpoon'):list():add()
      end,
      desc = 'Harpoon Add to list',
    },
    {
      '<leader>pl',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = 'Harpoon Toggle list',
    },
    {
      '<leader>p1',
      function()
        local harpoon = require 'harpoon'
        harpoon:list():select(1)
      end,
      desc = 'Harpoon go to file 1',
    },
    {
      '<leader>p2',
      function()
        local harpoon = require 'harpoon'
        harpoon:list():select(2)
      end,
      desc = 'Harpoon go to file 2',
    },
    {
      '<leader>pn',
      function()
        local harpoon = require 'harpoon'
        harpoon:list():next()
      end,
      desc = 'Harpoon go to next in list',
    },
    {
      '<leader>pp',
      function()
        local harpoon = require 'harpoon'
        harpoon:list():prev()
      end,
      desc = 'Harpoon go to prev in list',
    },
    {
      '<leader>pt',
      function()
        local harpoon = require 'harpoon'
        harpoon:setup {}
        local conf = require('telescope.config').values
        local function toggle_telescope(harpoon_files)
          local file_paths = {}
          for _, item in ipairs(harpoon_files.items) do
            table.insert(file_paths, item.value)
          end

          require('telescope.pickers')
            .new({}, {
              prompt_title = 'Harpoon',
              finder = require('telescope.finders').new_table {
                results = file_paths,
              },
              previewer = conf.file_previewer {},
              sorter = conf.generic_sorter {},
            })
            :find()
        end
        toggle_telescope(harpoon:list())
      end,
      desc = 'Harpoon open telescope',
    },
  },
}

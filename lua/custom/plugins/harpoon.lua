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
      '<leader>pt',
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
  },
}

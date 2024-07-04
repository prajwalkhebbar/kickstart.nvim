-- lazy.nvim
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  keys = {
    {
      '<leader>nd',
      function()
        require('noice').cmd 'dismiss'
      end,
      desc = 'Dismiss noice messages',
    },
  },
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    {
      'rcarriga/nvim-notify',
      config = function()
        require('notify').setup { stages = 'fade', fps = 60 }
      end,
    },
  },
}

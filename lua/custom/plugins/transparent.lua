return {
  'xiyaowong/transparent.nvim',
  lazy = false,
  -- config = function()
  --   require('transparent').clear_prefix 'Telescope'
  -- end,
  opts = {
    extra_groups = {
      'NormalFloat', -- plugins which have float panel such as Lazy, Mason, LspInfo
      'NvimTreeNormal', -- NvimTree
    },
  },
}

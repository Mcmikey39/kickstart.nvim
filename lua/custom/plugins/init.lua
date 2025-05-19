-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanJim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
  },
  {
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup()
    end,
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' }, -- for file icons
    config = function()
      require('bufferline').setup {
        options = {
          numbers = 'none', -- Show numbers, or "ordinal", "buffer_id", etc.
          close_command = 'bdelete! %d', -- Use 'bdelete' to close buffers
          left_trunc_marker = '',
          right_trunc_marker = '',
          show_buffer_icons = true, -- Show icons
          show_buffer_close_icons = true, -- Show close icons
          separator_style = 'slant', -- You can choose from other styles like "thin", "bold", etc.
          enforce_regular_tabs = true, -- Keep the tabs spaced evenly
          always_show_bufferline = true, -- Always show the bufferline
        },
      }
    end,
  },
}

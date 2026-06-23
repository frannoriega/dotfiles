-- SonicPI NVIM integration
return {
  'magicmonty/sonicpi.nvim',
  ft = 'sonicpi',
  dependencies = {
    'hrsh7th/nvim-cmp',
    'kyazdani42/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local default_mapping_opts = { noremap = true, silent = true, buffer = 0 }
    require('sonicpi').setup({
      server_dir = '/usr/lib/sonic-pi/server',
      lsp_diagnostics = true,
      mappings = {
        { 'n', '<leader>s', require('sonicpi.remote').stop,               default_mapping_opts },
        { 'i', '<M-s>',     require('sonicpi.remote').stop,               default_mapping_opts },
        { 'n', '<leader>r', require('sonicpi.remote').run_current_buffer, default_mapping_opts },
        { 'i', '<M-r>',     require('sonicpi.remote').run_current_buffer, default_mapping_opts },
      },
    })
  end,
}

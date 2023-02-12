-- enable builtin plugins
lvim.builtin.terminal.active = true -- toogleterm.nvim
lvim.builtin.cmp.cmdline.enable = true

-- disable builtin plugins
lvim.builtin.alpha.active = false -- alpha-nvim
lvim.builtin.illuminate.active = false
lvim.builtin.project.active = false
lvim.builtin.breadcrumbs.active = false
lvim.builtin.indentlines.active = false
lvim.builtin.lir.active = false

require("plugins.bufferline")
require("plugins.nvim-tree")
require("plugins.toggleterm")
require("plugins.nvim-treesitter")
require("plugins.telescope")
require("plugins.lspconfig")

-- extra plugins
lvim.plugins = {
  -- general
  { "folke/todo-comments.nvim" },
  { "rmagatti/auto-session" },
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- lsp
  { 'glepnir/lspsaga.nvim', event = "BufRead" },
  { 'onsails/lspkind-nvim' },

  -- cmp
  { 'hrsh7th/cmp-cmdline' },

  -- theme
  {
    "2nthony/vitesse.nvim",
    priority = 1000,
    dependencies = {
      "tjdevries/colorbuddy.nvim"
    },
    config = function()
      require("plugins.vitesse")
    end
  },

  -- navigation
  { "windwp/nvim-spectre" },
  { "ggandor/leap.nvim" },

  -- highlight
  { 'norcalli/nvim-colorizer.lua' }, -- highlight HEX color

  -- treesitter
  { "windwp/nvim-ts-autotag" },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function ()
      require("plugins.nvim-surround")
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects", -- recommended
    },
  },

  -- telescope
  { "folke/trouble.nvim" },

  -- git
  { "sindrets/diffview.nvim" },

  -- syntax
  { "imsnif/kdl.vim", event = "BufReadPre *.kdl", ft = "kdl" },

  -- others
  { "wakatime/vim-wakatime", event = "VeryLazy" },
}

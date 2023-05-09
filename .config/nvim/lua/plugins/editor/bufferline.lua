local icons = require("config.icons")
local icons_ui = icons.get("ui")

return {
  {
    "akinsho/bufferline.nvim",
    keys = function()
      return {}
    end,
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        mode = "tabs",
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
        -- show_duplicate_prefix = false,
        groups = {
          items = {
            require("bufferline.groups").builtin.pinned:with({ icon = icons_ui.Pinned }),
          },
        },
      },
    },
  },
  {
    "bufferline.nvim",
    dependencies = "vitesse.nvim",
    opts = {
      options = {
        separator_style = "slant",
      },
      highlights = require("vitesse.features.bufferline.slant").highlights,
    },
  },
}

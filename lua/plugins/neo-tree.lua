return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.filesystem = opts.filesystem or {}
      opts.filesystem.filtered_items = {
        visible = false,
        hide_dotfiles = true,
        always_show = { ".gitignore" },
      }
      opts.filesystem.window = { position = "float" }
      opts.popup_border_style = "rounded"

      return opts
    end,
  },
}

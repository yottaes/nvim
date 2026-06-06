return {
  {
    "mrcjkb/rustaceanvim",
    opts = function()
      local is_anchor = vim.fn.filereadable("Anchor.toml") == 1
      return {
        tools = {
          enable_clippy = true,
        },
        server = {
          default_settings = {
            ["rust-analyzer"] = {
              inlayHints = {
                lifetimeElisionHints = {
                  enable = "always",
                },
              },
              cargo = {
                allFeatures = not is_anchor,
                buildScripts = {
                  enable = true,
                },
              },
              procMacro = {
                enable = true,
              },
            },
          },
        },
      }
    end,
  },
}

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        zls = {

          filetypes = { "zig", "zon" },
          settings = {
            zls = {
              enable_snippets = true, -- Or false, depending on preference
              -- Other zls specific settings
            },
          },
          cmd = { vim.fn.expand("$HOME/.zvm/bin/zls") },
        },
      },
    },
  },
}

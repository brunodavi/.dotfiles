return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        jedi_language_server = {},

        -- lua_ls = {
        --   settings = {
        --     Lua = {
        --       diagnostics = {
        --         globals = { "vim" },
        --       },
        --       workspace = {
        --         library = {
        --           [vim.fn.expand "$VIMRUNTIME/lua"] = true,
        --           [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
        --         },
        --         maxPreload = 100000,
        --         preloadFileSize = 10000,
        --       },
        --     },
        --   },
        -- },

      },
    },
  },
}

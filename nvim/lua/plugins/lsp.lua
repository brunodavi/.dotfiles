return {
    {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        lua_ls = {},
        jedi_language_server = {},
        kotlin_language_server = {},
        java_language_server = {},
        gradle_language_server = {},
      },
    },
  },
}

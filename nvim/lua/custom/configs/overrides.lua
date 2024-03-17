local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "smali",
    "python",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "deno",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "tailwindcss-language-server",
    "emmet-ls",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- python stuff
    "jedi-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M

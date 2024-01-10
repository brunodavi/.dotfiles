local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "https://gitlab.com/schrieveslaach/sonarlint.nvim",
    config = function()
      require('sonarlint').setup({
        server = {
          cmd = {
            'sonarlint-language-server',
            -- Ensure that sonarlint-language-server uses stdio channel
            '-stdio',
            '-analyzers',
            -- paths to the analyzers you need, using those for python and java in this example
            vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
            vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
            vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
          },
          -- All settings are optional
          settings = {
            -- The default for sonarlint is {}, this is just an example
            sonarlint = {
              rules = {
                ['typescript:S101'] = { level = 'on', parameters = { format = '^[A-Z][a-zA-Z0-9]*$' } },
                ['typescript:S103'] = { level = 'on', parameters = { maximumLineLength = 180 } },
                ['typescript:S106'] = { level = 'on' },
                ['typescript:S107'] = { level = 'on', parameters = { maximumFunctionParameters = 7 } }
              }
            }
          }
        },
        filetypes = {
          -- Tested and working
          'python',
          'cpp',
          -- Requires nvim-jdtls, otherwise an error message will be printed
          'java',
        }
      })
    end,
  }

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins

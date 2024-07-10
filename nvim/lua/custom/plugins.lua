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
          require "custom.configs.lsp.null-ls"
        end,
        requires = { "nvim-lua/plenary.nvim" },
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lsp"
    end,
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

  {
		"hrsh7th/nvim-cmp",
		opts = overrides.cmp,
	},

  {
		"nvim-telescope/telescope.nvim",
		opts = overrides.telescope,
	},

  {
    "mg979/vim-visual-multi",
    lazy = false
  },

  -- My Plugins
	{
		"vimwiki/vimwiki",
	},

  {
    "ggandor/leap.nvim",
    init = function()
      require('leap').add_default_mappings()
    end
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

	{
		"mfussenegger/nvim-dap",
		config = function()
			require("custom.configs.dap")
		end,

    dependencies = {
      -- Required dependency for nvim-dap-ui
      'nvim-neotest/nvim-nio',

      -- Installs the debug adapters for you
      'jay-babu/mason-nvim-dap.nvim',

      {
        "rcarriga/nvim-dap-ui",
        config = function()
          require("dapui").setup()
        end,
      },

      {
        "theHamsta/nvim-dap-virtual-text",
        config = function()
          require("nvim-dap-virtual-text").setup()
        end,
      },
    }
	},
}

return plugins

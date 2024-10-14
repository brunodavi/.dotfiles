require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
    version = "^4", -- Remove version tracking to elect for nighly AstroNvim
    import = "astronvim.plugins",
    opts = { -- AstroNvim options must be set here with the `import` key
      mapleader = " ", -- This ensures the leader key must be configured before Lazy is set up
      maplocalleader = ",", -- This ensures the localleader key must be configured before Lazy is set up
      icons_enabled = true, -- Set to false to disable icons (if no Nerd Font is available)
      pin_plugins = nil, -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
      update_notifications = true, -- Enable/disable notification about running `:Lazy update` twice to update pinned plugins
    },
  },
  { import = "community" },
  { import = "plugins" },

  {
    'folke/neodev.nvim',
    config = function()
      require('neodev').setup()
    end,
  },

  {
    "nvim-neotest/neotest",
    dependencies = {
      {
        "Issafalcon/neotest-dotnet",
      },
    },

    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-dotnet")({
            dap = {
              -- Argumentos extras para configuração do nvim-dap
              -- Para mais informações, veja: https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
              args = { justMyCode = false },
              -- Nome do adaptador dap. O valor padrão é 'netcoredbg'
              adapter_name = "coreclr",
            },
            -- Atributos personalizados para descoberta de testes
            -- Note: Apenas atributos personalizados para testes não parametrizados devem ser incluídos aqui.
            custom_attributes = {
              xunit = { "Debug Tests xUnit" },
              nunit = { "Debug Tests on Nuit" },
              mstest = { "Debug Tests on MsTest" },
            },
            -- Argumentos adicionais para o comando `dotnet test`
            -- Esses argumentos serão aplicados a TODAS as execuções de teste realizadas via neotest
            dotnet_additional_args = {
              "--verbosity detailed",  -- Exibe mais detalhes na saída dos testes
            },
            -- Define se o root de descoberta será o projeto ou a solução
            -- 'project' é o valor padrão, mas 'solution' pode ser mais confiável quando se trabalha com .sln
            discovery_root = "solution",  -- Usar 'solution' se preferir detectar vários projetos em uma solução
          }),
        },
      })
    end,
  }
} --[[@as LazySpec]], {
  -- Configure any other `lazy.nvim` configuration options here
  install = { colorscheme = { "astrotheme", "habamax" } },
  ui = { backdrop = 100 },
  performance = {
    rtp = {
      -- disable some rtp plugins, add more to your liking
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
} --[[@as LazyConfig]])

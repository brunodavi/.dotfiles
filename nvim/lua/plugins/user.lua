---@diagnostic disable: missing-fields
-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
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
  },

  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " █████  ███████ ████████ ██████   ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ ███████    ██    ██████  ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ ███████    ██    ██   ██  ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = true },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}

local opt = vim.opt
local g = vim.g

local utils = require('custom.utils')

opt.clipboard = ""
opt.wrap = false

-- Snippets
g.snipmate_snippets_path = "~/.config/nvim/lua/custom/snippets"


-- Command
local new_cmd = vim.api.nvim_create_user_command


new_cmd(
  "ListModule",

  function(opts)
    local module_path = opts.args
    local module_var = require(module_path)

    print(vim.inspect(module_var))
  end,

  { nargs = 1 }
)

utils.test_function(
  function()
    print('testing, lua')
  end
)

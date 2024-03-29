require("custom.global")


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
  "InspectModule",

  function(opts)
    local module_path = opts.args
    utils.inspect_module(module_path)
  end,

  { nargs = 1 }
)

new_cmd(
  "CreateSnippet",

  function()
    utils.create_snippet()
  end,

  {}
)

-- Functions
utils.test_function(
  function()
    print(0)
  end
)

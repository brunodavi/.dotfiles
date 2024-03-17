---@type MappingsTable

local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>y"] = { '"+y', "Copy to clipboard"},
    ["<leader>ll"] = { ':Lazy<cr>', "Open Lazy"},
    ["q"] = { "" },
  },

  v = {
    [">"] = { ">gv", "indent"},
    ["<leader>y"] = { '"+y', "Copy to clipboard"},
  },
}

return M

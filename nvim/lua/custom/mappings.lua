---@type MappingsTable

local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>y"] = { '"+y', "Copy to clipboard"},
  },

  v = {
    [">"] = { ">gv", "indent"},
    ["<leader>y"] = { '"+y', "Copy to clipboard"},
  },
}

return M

---@type MappingsTable

local M = {}

M.general = {
  n = {
    -- Self
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader><leader>"] = { ':noh<CR>', "Clear search highlighting"},
    ["<leader>y"] = { '"+y', "Copy to clipboard"},
    ["<leader>ll"] = { ':Lazy<CR>', "Open Lazy"},
    ["q"] = { "" },

    -- Telescope
    ["<leader>fc"] = { ':Telescope git_status<CR>', "Find changed files"},
    ["<leader>fk"] = { ':Telescope keymaps<CR>', "Find keymaps"},

    -- DAP
    ["<leader>dl"] = { ":lua require'dap'.step_into()<CR>", "Debugger step into" },
    ["<leader>dj"] = { ":lua require'dap'.step_over()<CR>", "Debugger step over" },
    ["<leader>dk"] = { ":lua require'dap'.step_out()<CR>", "Debugger step out" },
    ["<leader>dc"] = { ":lua require'dap'.continue()<CR>", "Debugger continue" },
    ["<leader>dt"] = { ":lua require'dap'.toggle_breakpoint()<CR>", "Debugger toggle breakpoint" },
    ["<leader>dd"] = { ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", "Debugger set conditional breakpoint" },
    ["<leader>de"] = { ":lua require'dap'.terminate()<CR>", "Debugger reset" },
    ["<leader>dr"] = { ":lua require'dap'.run_last()<CR>", "Debugger run last" },
  },

  v = {
    [">"] = { ">gv", "indent"},
    ["<leader>y"] = { '"+y', "Copy to clipboard"},
  },
}

return M

M = {}

M.print_n = function(...)
    local args = table.pack(...)
    print(table.concat(args, '\n'))
end

M.test_function = function(func)
  vim.api.nvim_create_user_command(
    "TestCommand",

    function()
      func()
    end,

    {}
  )
end

M.count = 0

function M.inspect(items)
  M.count = M.count + 1

  local config_path = vim.fn.stdpath "config"
  local filename = string.format('%s/.__inspect__%d.lua', config_path, M.count)

  local inspect = 'return ' .. vim.inspect(items)
  inspect = inspect:gsub("<(%S+) %d+>", "'%1'")
  inspect = inspect:gsub("<%d+>", "")
  inspect = inspect:gsub("<([^>]+)>", "%1")

  local lines = {}

  for value in inspect:gmatch("[^\n]+") do
    table.insert(lines, value)
  end

  vim.cmd('view ' .. filename)
  vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
  vim.cmd('set filetype=lua')
end

---@param module_path string
function M.inspect_module(module_path)
  local module = require(module_path)
  M.inspect(module)
end

---@param no_ext boolean?
---@return string
function M.get_filename(no_ext)
  if no_ext then
    return vim.fn.expand('%:t')
  end

  return vim.fn.expand('%:t:r')
end

---@param filename? string # default current buffer file
function M.to_title(filename)
  filename = filename or M.get_filename()

  return filename:gsub(
    "([%a])([%w_']*)",

    function(first, rest)
      return first:upper() .. rest:lower()
    end
  )
end

---@param filename? string # default current buffer file
function M.to_pascal(filename)
  filename = filename or M.get_filename()

  return vim.fn.substitute(filename, [[\(_\|^\)\(.\)]], [[\u\2]], 'g')
end

return M

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


M.oi = 'ola'

return M

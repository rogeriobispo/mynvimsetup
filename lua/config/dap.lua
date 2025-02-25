local dap, dapui = require("dap"), require("dapui")

dap.adapters.go = function(callback, _)
  local handle, pid_or_err
  local port = 38697
  handle, pid_or_err = vim.loop.spawn("dlv", {
    args = { "dap", "-l", "127.0.0.1:" .. port },
    detached = true,
  }, function(code)
    handle:close()
  end)
  vim.defer_fn(function()
    callback({ type = "server", host = "127.0.0.1", port = port })
  end, 100)
end

dap.configurations.go = {
  {
    type = "go",
    name = "Debug",
    request = "launch",
    program = "${file}",
  },
  {
    type = "go",
    name = "Debug Package",
    request = "launch",
    program = "./",
  },
}

require("dap-go").setup()

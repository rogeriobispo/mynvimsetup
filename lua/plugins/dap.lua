return {
  -- nvim-dap principal
  {
    "mfussenegger/nvim-dap",
    lazy = true,
    dependencies = {
      "rcarriga/nvim-dap-ui", -- UI bonita
      "theHamsta/nvim-dap-virtual-text", -- variáveis inline
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      -- Configura dap-ui
      dapui.setup()
      require("nvim-dap-virtual-text").setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      -- Adapter js-debug (Microsoft)
      dap.adapters.node = {
        type = "executable",
        command = "node",
        args = {
          os.getenv("HOME") .. "/.local/share/nvim/dap_adapters/vscode-js-debug/out/src/dapDebugServer.js",
          "--server",
          "127.0.0.1:4711",
        },
      }

      -- Configuração de Node.js
      dap.configurations.javascript = {
        {
          name = "Launch Current File",
          type = "node",
          request = "launch",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          sourceMaps = true,
          console = "integratedTerminal",
        },
        {
          name = "Attach to Process",
          type = "node",
          request = "attach",
          port = 9229,
          restart = true,
          sourceMaps = true,
          protocol = "inspector",
          cwd = vim.fn.getcwd(),
        },
      }

      -- Adapter Ruby rdgb
      dap.adapters.ruby = function(callback, config)
        callback({
          type = "server",
          host = "127.0.0.1",
          port = config.port,
        })
      end
    end,
  },
}

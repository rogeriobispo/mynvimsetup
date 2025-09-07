return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- Adaptadores para Go, JS/TS (Jest) e Ruby
    "nvim-neotest/neotest-go",
    "nvim-neotest/neotest-jest",
    "olimorris/neotest-rspec", -- Para RSpec
    "zidhuss/neotest-minitest", -- Para Minitest
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-go")({
          experimental = {
            test_table = true, -- Suporte para subtestes
          },
          args = { "-count=1", "-timeout=60s" }, -- Ajuste conforme necessário
        }),
        require("neotest-jest")({
          jestCommand = "npm test --",
          env = { CI = true },
        }),
        require("neotest-rspec")({
          rspec_cmd = function()
            return vim.tbl_flatten({
              "bundle",
              "exec",
              "rspec",
            })
          end,
        }),
        require("neotest-minitest")({
          minitest_cmd = function()
            return "bundle exec ruby -Itest"
          end,
        }),
      },
    })
  end,
}

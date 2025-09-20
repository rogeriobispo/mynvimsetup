-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--  key maps for Debugging
local map = vim.keymap.set

-- keymaps for dap
local dap = require("dap")
map("n", "<F5>", dap.continue, { desc = "Start/Continue Debugging" })
map("n", "<F6>", function()
  dap.terminate()
  pcall(require("dapui").close)
end, { desc = "Stop Debugging" })
map("n", "<F10>", dap.step_over, { desc = "Step Over" })
map("n", "<F11>", dap.step_into, { desc = "Step Into" })
map("n", "<F12>", dap.step_out, { desc = "Step Out" })
map("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
map("n", "<Leader>dB", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "Conditional Breakpoint" })

-- keymaps for run tests
local neotest = require("neotest")

vim.keymap.set("n", "<leader>tt", function()
  neotest.run.run()
end, { desc = "Rodar teste atual" })

vim.keymap.set("n", "<leader>td", function()
  neotest.run.run({ strategy = "dap" })
end, { desc = "Rodar teste atual Debugging" })

vim.keymap.set("n", "<leader>tf", function()
  neotest.run.run(vim.fn.expand("%"))
end, { desc = "Rodar testes do arquivo" })

vim.keymap.set("n", "<leader>ta", function()
  neotest.run.run(vim.loop.cwd())
end, { desc = "Rodar todos os testes" })

vim.keymap.set("n", "<leader>ts", function()
  neotest.summary.toggle()
end, { desc = "Alternar sumário de testes" })

vim.keymap.set("n", "<leader>to", function()
  neotest.output.open()
end, { desc = "Abrir saída do teste" })

vim.keymap.set("n", "<leader>tw", function()
  neotest.watch.toggle()
end, { desc = "Alternar watch nos testes" })
local neotest = require("neotest")

vim.keymap.set("n", "<leader>tt", function()
  neotest.run.run()
end, { desc = "Rodar teste atual" })

vim.keymap.set("n", "<leader>td", function()
  neotest.run.run({ strategy = "dap" })
end, { desc = "Rodar teste atual Debugging" })

vim.keymap.set("n", "<leader>tf", function()
  neotest.run.run(vim.fn.expand("%"))
end, { desc = "Rodar testes do arquivo" })

vim.keymap.set("n", "<leader>ta", function()
  neotest.run.run(vim.loop.cwd())
end, { desc = "Rodar todos os testes" })

vim.keymap.set("n", "<leader>ts", function()
  neotest.summary.toggle()
end, { desc = "Alternar sumário de testes" })

vim.keymap.set("n", "<leader>to", function()
  neotest.output.open()
end, { desc = "Abrir saída do teste" })

vim.keymap.set("n", "<leader>tw", function()
  neotest.watch.toggle()
end, { desc = "Alternar watch nos testes" })

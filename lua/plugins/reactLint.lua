return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")

      opts.sources = opts.sources or {}
      vim.list_extend(opts.sources, {
        nls.builtins.formatting.prettier,
        nls.builtins.diagnostics.eslint,
        nls.builtins.code_actions.eslint,
      })
    end,
  },
}

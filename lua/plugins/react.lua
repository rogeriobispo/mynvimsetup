return {
  -- Treesitter para JSX / TSX
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "json",
        "css",
        "html",
      },
    },
  },

  -- Melhor edição JSX/TSX
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    opts = {},
  },
}

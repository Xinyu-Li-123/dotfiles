return {
  {
    "mrcjkb/rustaceanvim",
    ft = { "rust" },
    keys = {
      {
        "<leader>cm",
        "<cmd>RustLsp expandMacro<cr>",
        desc = "Rust: Expand macro",
        ft = "rust",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.icons = {
        rules = {
          { pattern = "Rust", icon = LazyVim.config.icons.kinds.Copilot, color = "orange" },
        },
      }
    end,
  },
}

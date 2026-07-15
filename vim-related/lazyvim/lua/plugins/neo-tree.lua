return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    open_files_do_not_replace_types = { "Trouble", "qf", "edgy" }, -- Removed "terminal" to allow replacing terminal windows
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files
        hide_dotfiles = false, -- Show dotfiles (e.g., .gitignore, .env)
        hide_gitignored = false, -- Show files ignored by .gitignore
      },
      -- group_empty_dirs = true,
    },
  },
}

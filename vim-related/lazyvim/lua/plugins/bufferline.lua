return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      -- Avoid opening directory as an empty file when restoring session
      custom_filter = function(buf, _)
        -- Directory buffers appears after restoring the session and
        -- they should be ignored.
        local buf_name = vim.api.nvim_buf_get_name(buf)
        local state = vim.uv.fs_stat(buf_name)
        if state and state.type == "directory" then
          return false
        end

        return true
      end,
    },
  },
}

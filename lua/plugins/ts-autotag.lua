return {
  {
    "windwp/nvim-ts-autotag",
    opts = {
      per_filetype = {
        ["tsx"] = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = true,
        }
      }
    },
    event = { "BufRead", "BufNewFile" },
  },
}

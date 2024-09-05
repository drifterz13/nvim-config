return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    build = "make",
    opts = {
      -- provider = "openai",
      -- openai = {
      --   endpoint = "https://api.openai.com/v1",
      --   model = "gpt-4o-2024-08-06",
      --   timeout = 30000, -- Timeout in milliseconds
      --   temperature = 0,
      --   max_tokens = 4096,
      --   ["local"] = false,
      -- },
      provider = "claude",
      claude = {
        endpoint = "https://api.anthropic.com",
        model = "claude-3-5-sonnet-20240620",
        timeout = 30000, -- Timeout in milliseconds
        temperature = 0,
        max_tokens = 4096,
        ["local"] = false,
      },
      keys = {
        { "<leader>aa", function() require("avante.api").ask() end,     desc = "avante: ask",    mode = { "n", "v" } },
        { "<leader>ar", function() require("avante.api").refresh() end, desc = "avante: refresh" },
        { "<leader>ae", function() require("avante.api").edit() end,    desc = "avante: edit",   mode = "v" },
      },
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      --- The below dependencies are optional,
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua",    -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      }, "MunifTanjim/nui.nvim",
      --- The below is optional, make sure to setup it properly if you have lazy=true
      {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  }
}

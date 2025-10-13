return {
  {
    "olimorris/codecompanion.nvim",
    dependencies={
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts={
      strategies = {
        chat = {
          adapter = "anthropic",
        },
        inline = {
          adapter = "anthropic",
        },
      },
      adapters = {
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "ANTHROPIC_API_KEY",  -- reads from env var
            },
          })
        end,
        openai = function()
          return require("codecompanion.adapters").extend("openai", {
            env = {
              api_key = "OPENAI_API_KEY",
            }
          })
        end,
        ollama = function()
          return require("codecompanion.adapters").exend("ollama", {
            schema = {
              model = {
                default = "llama3:latest",
              },
            },
          })
        end,
        acp = {
          claude_code = function()
            return require("codecompanion.adapters").extend("claude_code", {
              env = {
                "ANTHROPIC_API_KEY"
              },
            })
          end,
        },
      },
    },
  },
}

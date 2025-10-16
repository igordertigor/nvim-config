return {
  {
    "olimorris/codecompanion.nvim",
    dependencies={
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts={
      log_level = "DEBUG",
      strategies = {
        chat = {
          adapter = os.getenv("CC_CHAT_ADAPTER") or "ollama",
        },
        inline = {
          adapter = os.getenv("CC_INLINE_ADAPTER") or "ollama",
        },
        cmd = {
          adapter = os.getenv("CC_CMD_ADAPTER") or "ollama",
        }
      },
      adapters = {
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "ANTHROPIC_API_KEY",  -- reads from env var
            },
          })
        end,
        -- openai = function()
        --   return require("codecompanion.adapters").extend("openai", {
        --     env = {
        --       api_key = "OPENAI_API_KEY",
        --     }
        --   })
        -- end,
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            schema = {
              model = {
                default = "llama3:8b",
              },
            },
          })
        end,
        codellama = function()
          return require("codecompanion.adapters").extend("ollama", {
            name = "codellama",
            env = {
              url = "http://192.168.2.209:11434",
            },
            headers = {
              ["Content-Type"] = "application/json",
            },
            parameters = {
              sync = true,
            },
            schema = {
              model = {
                -- default = "mixtral"
                default = "codellama:34b"
                -- default = "llama3:8b"
                -- default = "llama3:70b"
                -- default = "deepseek-coder:33b"
              }
            }
          })
        end,

        mixtral = function()
          return require("codecompanion.adapters").extend("ollama", {
            name = "mixtral",
            env = {
              url = "http://192.168.2.209:11434",
            },
            headers = {
              ["Content-Type"] = "application/json",
            },
            parameters = {
              sync = true,
            },
            schema = {
              model = {
                default = "mixtral"
              }
            },
          })
        end,

        llama3_8b = function()
          return require("codecompanion.adapters").extend("ollama", {
            name = "llama3_8b",
            env = {
              url = "http://192.168.2.209:11434",
            },
            headers = {
              ["Content-Type"] = "application/json",
            },
            parameters = {
              sync = true,
            },
            schema = {
              model = {
                default = "llama3:8b"
              }
            },
          })
        end,

        llama3_70b = function()
          return require("codecompanion.adapters").extend("ollama", {
            name = "llama3_70b",
            env = {
              url = "http://192.168.2.209:11434",
            },
            headers = {
              ["Content-Type"] = "application/json",
            },
            parameters = {
              sync = true,
            },
            schema = {
              model = {
                default = "llama3:70b"
              }
            },
          })
        end,

        deepseek_coder_33b = function()
          return require("codecompanion.adapters").extend("ollama", {
            name = "deepseek_coder_33b",
            env = {
              url = "http://192.168.2.209:11434",
            },
            headers = {
              ["Content-Type"] = "application/json",
            },
            parameters = {
              sync = true,
            },
            schema = {
              model = {
                default = "deepseek-coder:33b"
              }
            },
          })
        end,

        acp = {
          claude_code = function()
            return require("codecompanion.adapters").extend("claude_code", {
              env = {
                ANTHROPIC_API_KEY = "ANTHROPIC_API_KEY"
              },
            })
          end,
        },
      },
    },
  },
}

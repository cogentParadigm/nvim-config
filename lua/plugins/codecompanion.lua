return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      anthropic = function()
        return require("codecompanion.adapters").extend("anthropic", {
          env = {
            api_key = vim.env.ANTHROPIC_API_KEY
          }
        })
      end,
      codestral = function()
        return require("codecompanion.adapters").extend("huggingface", {
          env = {
            api_key = vim.env.HF_API_KEY,
            model = "mistralai/Codestral-22B-v0.1"
          }
        })
      end
    },
    strategies = {
      chat = {
        adapter = "anthropic"
      },
      inline = {
        adapter = "anthropic"
      }
    }
  }
}

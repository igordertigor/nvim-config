return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ltex = {
          settings = {
            ltex = {
              language = "en-US",
              diagnosticSeverity = "information",
              setenceCacheSize = 2000,
              additionalRules = {
                enablePickyRules = true,
                motherTongue = "en-US",
              },
            },
          },
        },
      },
    },
  },
}

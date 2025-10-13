return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Python
        "pyright",
        -- "ruff",

        -- TypeScript
        "typescript-language-server",

        -- Markdown
        "marksman",

        -- LaTeX
        "texlab",

        -- LTex
        "ltex-ls",

        -- yaml
        "yaml-language-server",

        -- json
        "json-lsp",

        -- terraform
        "terraform-ls",
        "tflint",
      },
    },
  },
}

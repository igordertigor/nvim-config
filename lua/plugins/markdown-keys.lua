return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      -- Add custom markdown keybindings
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "markdown",
        callback = function()
          local opts = { buffer = true, nowait = true }

          vim.keymap.set("i", "->", "→", opts)
          vim.keymap.set("i", "~>", "⇝", opts)
          vim.keymap.set("i", "=>", "⇒", opts)
          vim.keymap.set("i", "|>", "↦", opts)
          vim.keymap.set("i", "@o", "☐", opts)
          vim.keymap.set("i", "@v", "☑", opts)
          vim.keymap.set("i", "@x", "☒", opts)
          vim.keymap.set("i", "<C-g>o", '“', { desc = "Smart opening quote" })
          vim.keymap.set("i", "<C-g>c", '”', { desc = "Smart closing quote" })
          vim.keymap.set("i", "<C-g>O", "‘", { desc = "Smart opening single quote" })
          vim.keymap.set("i", "<C-g>C", "’", { desc = "Smart closing single quote" })
          vim.keymap.set("i", "<C-g>.", "…", { desc = "Insert ellipsis" })
          vim.keymap.set("n", "@v", function()
            vim.cmd(":s/☐/☑/")
            vim.cmd(":nohl")
          end, { desc = "TODO check", buffer = true, nowait = true })
          vim.keymap.set("n", "@x", function()
            vim.cmd(":s/☐/☒/")
            vim.cmd(":nohl")
          end, { desc = "TODO cross", buffer = true, nowait = true })
          vim.keymap.set("n", "<leader>N", ":e `./new`<CR>", { desc = "New note" })
        end,
      })
    end,
  },
}

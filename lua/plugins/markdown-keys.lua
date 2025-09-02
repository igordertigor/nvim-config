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

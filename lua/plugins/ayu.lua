return {
  "Shatur/neovim-ayu",
  config = function()
    require('ayu').setup({
      mirage = true, -- Set to true for mirage variant
      overrides = {},
    })
    -- set as default
    vim.cmd.colorscheme("ayu-mirage")
  end,
}

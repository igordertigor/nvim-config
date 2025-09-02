return {
  -- Modern Solarized implementation
  "maxmx03/solarized.nvim",
  config = function()
    require('solarized').setup({
      variant = 'autumn', -- 'autumn' or 'spring', 'summer', 'winter'
      palette = 'solarized', -- 'solarized' or 'selenized'
      styles = {
        comments = { italic = true },
        functions = { bold = true },
        variables = {},
      },
      plugins = {
        treesitter = true,
        lspconfig = true,
        navic = true,
        cmp = true,
        indentblankline = true,
        neotree = true,
        telescope = true,
        whichkey = true,
      },
    })
  end,
}

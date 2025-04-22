return {
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    -- priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    lazy = true,
    opts = function()
      return {
        transparency = true,
      }
    end,
  },
}

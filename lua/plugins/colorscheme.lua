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
  -- Using Lazy
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup({
        style = "darker",
        transparency = true,
      })
      -- Enable theme
      require("onedark").load()
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

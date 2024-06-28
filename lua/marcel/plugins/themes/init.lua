-- Eine liste über alle Farbschemas von Onedark
-- https://github.com/navarasu/onedark.nvim

return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup({
      style = "warm"
      })
      vim.cmd([[colorscheme onedark]])
    end,
  },
}

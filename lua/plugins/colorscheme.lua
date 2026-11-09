return {
  -- 1. 安装新主题
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- 风格可选: latte, frappe, macchiato, mocha
    },
  },

  -- 2. 覆盖 LazyVim 默认的 colorscheme 设置
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

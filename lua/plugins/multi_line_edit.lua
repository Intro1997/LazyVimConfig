return {
  "mg979/vim-visual-multi",
  init = function()
    -- 设置插件的快捷键映射
    vim.g.VM_maps = {
      ["Add Cursor Down"] = "<C-j>", -- Ctrl + j 向下添加光标
      ["Add Cursor Up"] = "<C-k>", -- Ctrl + k 向上添加光标
      ["Find Under"] = "<C-n>", -- Ctrl + n 选中当前单词并查找下一个 (类似 Cmd+D)
      ["Find Subword Under"] = "<C-n>", -- 视觉模式下也生效
    }
  end,
}

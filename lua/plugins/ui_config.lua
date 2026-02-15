-- refer to https://github.com/di4m0nds/nvim.lua/blob/master/after/plugin/colors.lua
local orange = "#FF966C"
local lineNumberColor = { bg = "none", fg = orange }

-- 定义核心着色函数
local function ApplyLineNumberColor()
  vim.api.nvim_set_hl(0, "LineNrAbove", lineNumberColor)
  vim.api.nvim_set_hl(0, "LineNr", lineNumberColor)
  vim.api.nvim_set_hl(0, "LineNrBelow", lineNumberColor)
end

return {
  {
    "ui-line-nr-config", -- 这是一个虚拟的插件名
    virtual = true, -- 告诉 lazy 这不是一个真正的远程插件
    dir = "/", -- 随便给个路径规避报错
    config = function()
      -- 1. 创建自动命令：每当配色方案改变（包括启动时），都重新执行一次
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          ApplyLineNumberColor()
        end,
      })

      ApplyLineNumberColor()
    end,
  },
}

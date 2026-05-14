return {
  -- 1. 确保 Mason 安装了 prettier
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "prettier")
    end,
  },

  -- 2. 配置 Conform 强制运行 Prettier
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- 定义格式化器行为
      opts.formatters = opts.formatters or {}
      opts.formatters.prettier = {
        -- 核心修复：强制 Prettier 运行，即使没有 .prettierrc 配置文件
        condition = function()
          return true
        end,
      }

      -- 设置不同文件类型使用的格式化器
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft["markdown"] = { "prettier", "markdown-toc" }
      opts.formatters_by_ft["markdown.mdx"] = { "prettier", "markdown-toc" }
    end,
  },

  -- 3. 禁用不需要的 linter
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {},
      },
    },
  },
}
